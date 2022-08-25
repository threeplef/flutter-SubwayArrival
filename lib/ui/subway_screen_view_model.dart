import 'package:flutter/material.dart';
import 'package:seoul_subway/data/model/subway.dart';
import 'package:seoul_subway/data/repository/subway_repository.dart';
import 'package:seoul_subway/data/source/subway_api_impl.dart';

class SubwayScreenViewModel extends ChangeNotifier {
  final _subwayRepository = SubwayRepository(SubwayApiImpl());

  Subway arrivalList = const Subway(
    updnLine: 'updnLine',
    trainLineNm: 'trainLineNm',
    statnNm: 'statnNm',
    arvlMsg2: 'arvlMsg2',
    arvlMsg3: 'arvlMsg3',
  );

  void fetchArrivalLists(String query) async {
    arrivalList = await _subwayRepository.getList(query);
    notifyListeners();
  }
}