import "package:flutter_common_classes/constants/classes/params.dart";

/// Parameters used to make the Player request.
class PlayerParams extends Params {
  /// Parameters used to make the Player request.
  PlayerParams();
  
  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer ", // TODO: Access token Impl
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
