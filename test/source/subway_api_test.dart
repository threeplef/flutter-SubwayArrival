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

    SubwayDto subway = await api.getList('영등포');

    expect(subway.realtimeArrivalList?.elementAt(0).statnNm, '영등포');
    expect(subway.realtimeArrivalList?.elementAt(0).updnLine, '상행');
  });
}

const fakeSubwayData = """
{
  "errorMessage": {
    "status": 200,
    "code": "INFO-000",
    "message": "정상 처리되었습니다.",
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
      "updnLine": "상행",
      "trainLineNm": "광운대행 - 신길방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000140",
      "statnTid": "1001000138",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "01000광운대0",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "0648",
      "bstatnId": "171",
      "bstatnNm": "광운대",
      "recptnDt": "2022-08-25 14:41:01.0",
      "arvlMsg2": "영등포 도착",
      "arvlMsg3": "영등포",
      "arvlCd": "1"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 8,
      "rowNum": 2,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "청량리행 - 신길방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000140",
      "statnTid": "1001000138",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "01014청량리",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "1926",
      "bstatnId": "249",
      "bstatnNm": "청량리",
      "recptnDt": "2022-08-25 14:38:55.0",
      "arvlMsg2": "[14]번째 전역 (성균관대)",
      "arvlMsg3": "성균관대",
      "arvlCd": "99"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 8,
      "rowNum": 3,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "청량리행 - 신길방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000140",
      "statnTid": "1001000138",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "02004청량리",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "0460",
      "bstatnId": "249",
      "bstatnNm": "청량리",
      "recptnDt": "2022-08-25 14:41:01.0",
      "arvlMsg2": "[4]번째 전역 (독산)",
      "arvlMsg3": "독산",
      "arvlCd": "99"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 8,
      "rowNum": 4,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "청량리행 - 신길방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000140",
      "statnTid": "1001000138",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "02021청량리",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "1928",
      "bstatnId": "249",
      "bstatnNm": "청량리",
      "recptnDt": "2022-08-25 14:38:55.0",
      "arvlMsg2": "[21]번째 전역 (오산)",
      "arvlMsg3": "오산",
      "arvlCd": "99"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 8,
      "rowNum": 5,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "하행",
      "trainLineNm": "인천행 - 신도림방면",
      "subwayHeading": "왼쪽",
      "statnFid": "1001000138",
      "statnTid": "1001000140",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "11002인천0",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "0119",
      "bstatnId": "98",
      "bstatnNm": "인천",
      "recptnDt": "2022-08-25 14:39:59.0",
      "arvlMsg2": "[2]번째 전역 (대방)",
      "arvlMsg3": "대방",
      "arvlCd": "99"
    }
  ]
}
""";