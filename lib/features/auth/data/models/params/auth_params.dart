import "package:flutter_common_classes/constants/classes/params.dart";

/// Parameters used to make the Auth request.
class AuthParams extends Params {
  /// Parameters used to make the Auth request.
  AuthParams();
  
  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer ", // TODO: Access token Impl 
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
