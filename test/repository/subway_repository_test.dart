import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:seoul_subway/data/model/subway_dto.dart';
import 'package:seoul_subway/data/repository/subway_repository.dart';
import 'package:seoul_subway/data/source/subway_api.dart';

import '../source/subway_api_test.dart';
import 'subway_repository_test.mocks.dart';

@GenerateMocks([SubwayApi])
void main() {
  test('지하철 도착 정보가 잘 들어와야 된다', () async {
    final api = MockSubwayApi();

    when(api.getList('영등포'))
        .thenAnswer((_) async => SubwayDto.fromJson(jsonDecode(fakeSubwayData)));
    final repository = SubwayRepository(api);

    final subway = await repository.getList('영등포');

    expect(subway.statnNm, '영등포');
  });
}