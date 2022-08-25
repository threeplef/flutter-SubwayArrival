import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seoul_subway/data/model/subway_dto.dart';
import 'package:seoul_subway/data/source/subway_api.dart';

class SubwayApiImpl implements SubwayApi {
  final http.Client _client;

  SubwayApiImpl({http.Client? client}) : _client = (client ?? http.Client());

  @override
  Future<SubwayDto> getList(String query) async {
    Uri url = Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query');
    http.Response response = await _client.get(url);

    String jsonData = utf8.decode(response.bodyBytes);
    Map<String, dynamic> json = jsonDecode(jsonData);
    return SubwayDto.fromJson(json);
  }
}
