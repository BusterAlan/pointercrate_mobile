import "../../../../../core/constants/classes/params.dart";

/// Parameters used to make the Guidelines request.
class GuidelinesParams extends Params {
  /// Parameters used to make the Guidelines request.
  GuidelinesParams();

  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer $accessToken",
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
