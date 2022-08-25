import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:seoul_subway/data/model/subway_dto.dart';
import 'package:seoul_subway/data/source/subway_api_impl.dart';

void main() {
  test('지하철 도착 정보는 잘 들어와야 된다', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/영등포') {
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
    "total": 6
  },
  "realtimeArrivalList": [
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 6,
      "rowNum": 1,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "동두천행 - 신길방면 (급행)",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000140",
      "statnTid": "1001000138",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "01000동두천1",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": "급행",
      "barvlDt": "0",
      "btrainNo": "1608",
      "bstatnId": "189",
      "bstatnNm": "동두천 (급행)",
      "recptnDt": "2022-08-25 10:09:29.0",
      "arvlMsg2": "영등포 도착",
      "arvlMsg3": "영등포",
      "arvlCd": "1"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 6,
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
      "ordkey": "01001청량리0",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "0436",
      "bstatnId": "249",
      "bstatnNm": "청량리",
      "recptnDt": "2022-08-25 10:09:38.0",
      "arvlMsg2": "전역 도착",
      "arvlMsg3": "신도림",
      "arvlCd": "5"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 6,
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
      "ordkey": "02014청량리",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "1910",
      "bstatnId": "249",
      "bstatnNm": "청량리",
      "recptnDt": "2022-08-25 10:09:29.0",
      "arvlMsg2": "[14]번째 전역 (성균관대)",
      "arvlMsg3": "성균관대",
      "arvlCd": "99"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 6,
      "rowNum": 4,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "하행",
      "trainLineNm": "광명행 - 신도림방면",
      "subwayHeading": "왼쪽",
      "statnFid": "1001000138",
      "statnTid": "1001000140",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "11000광명0",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "7011",
      "bstatnId": "69",
      "bstatnNm": "광명",
      "recptnDt": "2022-08-25 10:03:06.0",
      "arvlMsg2": "영등포 도착",
      "arvlMsg3": "영등포",
      "arvlCd": "1"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 6,
      "rowNum": 5,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "하행",
      "trainLineNm": "동인천행 - 신도림방면 (급행)",
      "subwayHeading": "왼쪽",
      "statnFid": "1001000138",
      "statnTid": "1001000140",
      "statnId": "1001000139",
      "statnNm": "영등포",
      "trainCo": null,
      "ordkey": "11004동인천1",
      "subwayList": "1001",
      "statnList": "1001000139",
      "btrainSttus": "급행",
      "barvlDt": "0",
      "btrainNo": "1073",
      "bstatnId": "97",
      "bstatnNm": "동인천 (급행)",
      "recptnDt": "2022-08-25 10:07:19.0",
      "arvlMsg2": "[4]번째 전역 (용산)",
      "arvlMsg3": "용산",
      "arvlCd": "99"
    }
  ]
}
""";