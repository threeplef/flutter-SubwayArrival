import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:seoul_subway/data/model/subway_dto.dart';
import 'package:seoul_subway/data/source/subway_api_impl.dart';

void main() {
  test('지하철 도착 정보는 잘 들어와야 된다', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() ==
          'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/%EC%98%81%EB%93%B1%ED%8F%AC') {
        return Response(fakeSubwayData, 200);
      }
      return Response('error', 404);
    });

    final api = SubwayApiImpl(client: mockClient);

    SubwayDto subway = await api.getList('yeongdeungpo');

    expect(subway.realtimeArrivalList?.elementAt(0).statnNm, 'yeongdeungpo');
    expect(subway.realtimeArrivalList?.elementAt(0).updnLine, 'up');
  });
}

const fakeSubwayData = """
{
  "errorMessage": {
    "status": 200,
    "code": "INFO-000",
    "message": "good",
    "link": "",
    "developerMessage": "",
    "total": 8
  },
  "realtimeArrivalList": [
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 8,
      "rowNum": 1,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "up",
      "trainLineNm": "GwangWoon - Singil",
      "subwayHeading": "right",
      "statnFid": "1001000140",
      "statnTid": "1001000138",
      "statnId": "1001000139",
      "statnNm": "yeongdeungpo",
      "trainCo": null,
      "ordkey": "01000GwangWoon0",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "0648",
      "bstatnId": "171",
      "bstatnNm": "GwangWoon",
      "recptnDt": "2022-08-25 14:41:01.0",
      "arvlMsg2": "yeongdeungpo arrive",
      "arvlMsg3": "yeongdeungpo",
      "arvlCd": "1"
    }
  ]
}
""";