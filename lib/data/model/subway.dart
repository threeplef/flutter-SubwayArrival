import 'package:freezed_annotation/freezed_annotation.dart';

part 'subway.freezed.dart';
part 'subway.g.dart';

@freezed
class Subway with _$Subway {
  const factory Subway({
    required String updnLine,
    required String trainLineNm,
    required String statnNm,
    required String arvlMsg2,
    required String arvlMsg3,
  }) = _Subway;

  factory Subway.fromJson(Map<String, Object?> json) => _$SubwayFromJson(json);
}