import 'package:seoul_subway/data/model/subway.dart';
import 'package:seoul_subway/data/source/subway_api.dart';

class SubwayRepository {
  final SubwayApi _api;

  SubwayRepository(this._api);

  Future<Subway> getList(String query) async {
    final subwayDto = await _api.getList(query);

    return Subway(
      updnLine: subwayDto.realtimeArrivalList?.elementAt(0).updnLine ?? '',
      trainLineNm: subwayDto.realtimeArrivalList?.elementAt(0).trainLineNm?? '',
      statnNm: subwayDto.realtimeArrivalList?.elementAt(0).statnNm?? '',
      arvlMsg2: subwayDto.realtimeArrivalList?.elementAt(0).arvlMsg2?? '',
      arvlMsg3: subwayDto.realtimeArrivalList?.elementAt(0).arvlMsg3 ?? '',
    );
  }
}
