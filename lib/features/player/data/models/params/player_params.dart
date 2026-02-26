import "../../../../../core/constants/classes/params.dart";

/// Parameters used to make the Player request.
class PlayerParams extends Params {
  /// Parameters used to make the Player request.
  PlayerParams();
  
  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer $accessToken",
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
