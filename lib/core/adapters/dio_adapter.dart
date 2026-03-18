import "dart:async";

import "package:dio/dio.dart";
import "package:dio/io.dart";
import "package:flutter/foundation.dart";
import "package:flutter_common_classes/errors/connection/http_call_exception.dart";
import "package:flutter_common_classes/extensions/num_extension.dart";
import "package:flutter_common_classes/services/connection/network_info.dart";
import "package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart";

/// Adapter for the Dio client configured for the Pointercrate API.
///
/// Handles:
/// - Bearer token injection on every request
/// - ETag storage per URL (used for conditional requests)
/// - If-Match header injection on PATCH/DELETE requests
/// - Pointercrate-specific error message parsing
class DioAdapter extends DioForNative {
  /// Adapter for the Dio client configured for the Pointercrate API.
  ///
  /// Handles:
  /// - Bearer token injection on every request
  /// - ETag storage per URL (used for conditional requests)
  /// - If-Match header injection on PATCH/DELETE requests
  /// - Pointercrate-specific error message parsing
  DioAdapter({
    required this.internetInfo,
    required this.baseUrl,
    this.receiveTimeout,
    this.connectTimeout,
    this.sendTimeout,
    this.getToken,
  }) {
    _initializeAdapter();
  }

  /// Information about the internet connection
  final NetworkInfo internetInfo;

  /// Base URL of the Pointercrate API (e.g. "https://www.pointercrate.com")
  final String baseUrl;

  /// Callback to retrieve the current Bearer token from secure storage.
  /// Returns null if the user is not authenticated.
  final Future<String?> Function()? getToken;

  /// Maximum time to receive a complete response from the server
  final Duration? receiveTimeout;

  /// Maximum time to establish connection with the server
  final Duration? connectTimeout;

  /// Maximum time to send the request to the server
  final Duration? sendTimeout;

  /// In-memory ETag cache: maps request URL → ETag value.
  ///
  /// Populated on every response that includes an "etag" header.
  /// Used to set the "If-Match" header on PATCH/DELETE requests.
  final Map<String, String> _eTagCache = {};

  void _initializeAdapter() {
    options = BaseOptions(
      baseUrl: baseUrl,
      sendTimeout: sendTimeout,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      // Pointercrate expects JSON bodies on POST/PATCH
      contentType: "application/json",
      responseType: ResponseType.json,
    );

    interceptors
      ..add(
        PrettyDioLogger(
          requestHeader: false,
          queryParameters: false,
          requestBody: true,
          responseHeader: false,
          responseBody: true,
          error: true,
          showProcessingTime: false,
          showCUrl: false,
          canShowLog: kDebugMode,
        ),
      )
      ..add(
        InterceptorsWrapper(
          onRequest: onRequestMethod,
          onResponse: onResponseMethod,
          onError: onErrorMethod,
        ),
      );
  }

  // ---------------------------------------------------------------------------
  // Request interceptor
  // ---------------------------------------------------------------------------

  /// Injects the Bearer token and, for mutating methods, the If-Match header.
  FutureOr<void> onRequestMethod(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // 1. Inject Bearer token if available
    final token = await getToken?.call();
    if (token != null && token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }

    // 2. Inject If-Match for PATCH and DELETE requests
    //    Pointercrate returns 412 if this header is missing or stale.
    final method = options.method.toUpperCase();
    if (method == "PATCH" || method == "DELETE") {
      final cachedETag = _eTagCache[options.path];
      if (cachedETag != null) {
        options.headers["If-Match"] = cachedETag;
      }
    }

    handler.next(options);
  }

  // ---------------------------------------------------------------------------
  // Response interceptor
  // ---------------------------------------------------------------------------

  /// Caches the ETag returned by Pointercrate so it can be replayed
  /// on subsequent PATCH/DELETE calls for the same resource.
  FutureOr<void> onResponseMethod(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final etag = response.headers.value("etag");
    if (etag != null) {
      _eTagCache[response.requestOptions.path] = etag;
    }

    handler.next(response);
  }

  // ---------------------------------------------------------------------------
  // Error interceptor
  // ---------------------------------------------------------------------------

  /// Maps Pointercrate HTTP errors to domain exceptions.
  ///
  /// Pointercrate error body shape:
  /// ```json
  /// { "code": 40100, "message": "...", "data": { ... } }
  /// ```
  FutureOr<void> onErrorMethod(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    HttpCallException? errorObject;

    switch (error.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.unknown:
        errorObject = await internetInfo.isConnected
            ? ConnectionErrorException.serverDown()
            : ConnectionErrorException.clientOffline();

      case DioExceptionType.badResponse:
        final statusCode = error.response!.statusCode!;

        // Pointercrate wraps messages in "message", not "Message"
        final dynamic body = error.response?.data;
        final String? pointercateMessage =
            body is Map ? body["message"] as String? : null;

        if (statusCode.isBetween(300, 499)) {
          if (statusCode == 401 || statusCode == 403) {
            // 401 → missing/invalid token  |  403 → insufficient permissions
            errorObject = ClientErrorException.unauthorized(
              data: error.response?.data,
            );
          } else if (statusCode == 409) {
            // 409 Conflict → e.g. duplicate demon name
            errorObject = ClientErrorException.badRequest(
              message: pointercateMessage ?? "Conflicto con el estado actual del recurso",
              data: error.response?.data,
            );
          } else if (statusCode == 412) {
            // 412 Precondition Failed → stale or missing If-Match header
            errorObject = ClientErrorException.badRequest(
              message: "El recurso fue modificado. Por favor recarga e intenta de nuevo.",
              data: error.response?.data,
            );
          } else if (statusCode == 422) {
            // 422 Unprocessable Entity → validation errors from Pointercrate
            errorObject = ClientErrorException.badRequest(
              message: pointercateMessage ?? "Los datos enviados no son válidos",
              data: error.response?.data,
            );
          } else {
            errorObject = ClientErrorException.badRequest(
              message: pointercateMessage ?? "Los parámetros enviados al servidor son incorrectos",
              data: error.response?.data,
            );
          }
        } else if (statusCode.isBetween(500, 599)) {
          errorObject = ServerErrorException(
            title: "Error del servidor",
            message: pointercateMessage ?? "Estamos trabajando en ello lo más rápido posible",
            data: error.response?.data,
          );
        } else {
          errorObject = ClientErrorException.badRequest();
        }

      case DioExceptionType.cancel:
        errorObject = ClientErrorException.cancelRequest();

      case DioExceptionType.badCertificate:
        errorObject = ServerErrorException.badCertificate();
    }

    handler.reject(error.copyWith(error: errorObject));
  }

  // ---------------------------------------------------------------------------
  // Public helper
  // ---------------------------------------------------------------------------

  /// Manually invalidates the ETag for a given path.
  ///
  /// Call this after a successful DELETE so stale entries don't linger.
  void invalidateETag(String path) => _eTagCache.remove(path);
}
