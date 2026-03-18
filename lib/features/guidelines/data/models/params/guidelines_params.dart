import "package:flutter_common_classes/constants/classes/params.dart";

/// Parameters used to make the Guidelines request.
class GuidelinesParams extends Params {
  /// Parameters used to make the Guidelines request.
  GuidelinesParams();

  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer ", // TODO: Access token Impl
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
