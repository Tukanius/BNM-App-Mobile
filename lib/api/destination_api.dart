import 'package:bnm_flutter/models/destination_models/beautiful_place.dart';
import 'package:bnm_flutter/models/destination_models/destination.dart';
import 'package:bnm_flutter/models/result.dart';
import 'package:bnm_flutter/src/utils/http_request.dart';

class DestinationApi extends HttpRequest {
  getDestinationList(ResultArguments resultArguments) async {
    var res = await get(
      '/app/beautiful-places',
      data: resultArguments.toJson(),
    );
    return Result.fromJson(res, Destination.fromJson);
  }

  getDestinationDetail(String id) async {
    var res = await get('/app/beautiful-places/$id');
    return BeautifulPlace.fromJson(res);
  }

  getReferenceFilter(ResultArguments resultArguments) async {
    var res = await get(
      '/app/beautiful-places',
      data: resultArguments.toJson(),
    );
    return Result.fromJson(res, Destination.fromJson);
  }
}
