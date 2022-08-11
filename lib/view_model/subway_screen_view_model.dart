import 'package:flutter/material.dart';
import 'package:seoul_subway/api/subway_arrival_api.dart';
import 'package:seoul_subway/model/subway_arrival.dart';

class SubwayScreenViewModel extends ChangeNotifier {
  final _subwayApi = SubwayApi();

  List<SubwayArrival> arrivalList = [];

  void fetchArrivalLists(String query) async {
    arrivalList = await _subwayApi.getLists(query);
    notifyListeners();
  }
}