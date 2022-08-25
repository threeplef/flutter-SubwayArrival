import 'package:seoul_subway/data/model/subway.dart';
import 'package:seoul_subway/data/model/subway_dto.dart';
import 'package:seoul_subway/data/source/subway_api.dart';

class SubwayRepository {
  final SubwayApi _api;

  SubwayRepository(this._api);

  Future<List<Subway>> getList(String query) async {
    final subwayDto = await _api.getList(query);

    if ((subwayDto.realtimeArrivalList?.length ?? 0) == 0) {
      return [];
    }
    return subwayDto.realtimeArrivalList!
        .map((RealtimeArrivalList e) => Subway(
              updnLine: e.updnLine ?? '',
              trainLineNm: e.trainLineNm ?? '',
              statnNm: e.statnNm ?? '',
              arvlMsg2: e.arvlMsg2 ?? '',
              arvlMsg3: e.arvlMsg3 ?? '',
            ))
        .toList();
  }
}
