import "package:flutter_common_classes/constants/classes/params.dart";

/// Parameters used to make the Stats request.
class StatsParams extends Params {
  /// Parameters used to make the Stats request.
  StatsParams();
  
  /*
  The params class is responsible for holding the data that will be used to make the request to the API. 
  It is also responsible for converting the data into a format that the API can use. 
  This could involve serializing objects into JSON, or mapping objects to database rows.
  */

  @override
  Map<String, dynamic> headers() => {
        "Authorization": "Bearer ", // TODO: Access token Impl
      };

  @override
  Map<String, dynamic>? queries() => null;

  @override
  Map<String, dynamic> body() => {};
}
