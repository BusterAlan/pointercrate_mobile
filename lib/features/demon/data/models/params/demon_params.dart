import "../../../../../core/constants/classes/params.dart";

/// Parameters used to make the Demon request.
class DemonParams extends Params {
  /// Parameters used to make the Demon request.
  DemonParams({this.limit = 50, this.after, this.before});
  
  /// Limit value count for paginations
  final int? limit;

  /// Certain int value to set an index (right values for pagination)
  final int? after;

  /// Certain int value to set an index (left values for pagination)
  final int? before;
  
  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer $accessToken",
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
