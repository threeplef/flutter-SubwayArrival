import 'package:flutter/material.dart';
import 'package:seoul_subway/data/model/subway.dart';
import 'package:seoul_subway/data/source/subway_source.dart';

class SubwayScreenViewModel extends ChangeNotifier {
  final _subwayApi = SubwayApi();

  List<Subway> arrivalList = [];

  void fetchArrivalLists(String query) async {
    arrivalList = await _subwayApi.getLists(query);
    notifyListeners();
  }
}