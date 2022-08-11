import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seoul_subway/model/subway_arrival.dart';

class SubwayApi {
  SubwayApi() {
    fetchArrivalLists('');
  }

  final _arrivalListStreamController = StreamController<List<SubwayArrival>>();

  Stream<List<SubwayArrival>> get arrivalListStream => _arrivalListStreamController.stream;

  void fetchArrivalLists(String query) async {
    List<SubwayArrival> arrivalList = await getLists(query);
    _arrivalListStreamController.add(arrivalList);
  }

  Future<List<SubwayArrival>> getLists(String query) async {
    Uri url = Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query');

    http.Response response = await http.get(url);

    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    if(json['realtimeArrivalList'] == null) {
      return List.empty();
    }
    Iterable hits = json['realtimeArrivalList'];
    return hits.map((e) => SubwayArrival.fromJson(e)).toList();
  }
}
