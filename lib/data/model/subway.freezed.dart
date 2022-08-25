// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subway _$SubwayFromJson(Map<String, dynamic> json) {
  return _Subway.fromJson(json);
}

/// @nodoc
mixin _$Subway {
  String get updnLine => throw _privateConstructorUsedError;
  String get trainLineNm => throw _privateConstructorUsedError;
  String get statnNm => throw _privateConstructorUsedError;
  String get arvlMsg2 => throw _privateConstructorUsedError;
  String get arvlMsg3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubwayCopyWith<Subway> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubwayCopyWith<$Res> {
  factory $SubwayCopyWith(Subway value, $Res Function(Subway) then) =
      _$SubwayCopyWithImpl<$Res>;
  $Res call(
      {String updnLine,
      String trainLineNm,
      String statnNm,
      String arvlMsg2,
      String arvlMsg3});
}

/// @nodoc
class _$SubwayCopyWithImpl<$Res> implements $SubwayCopyWith<$Res> {
  _$SubwayCopyWithImpl(this._value, this._then);

  final Subway _value;
  // ignore: unused_field
  final $Res Function(Subway) _then;

  @override
  $Res call({
    Object? updnLine = freezed,
    Object? trainLineNm = freezed,
    Object? statnNm = freezed,
    Object? arvlMsg2 = freezed,
    Object? arvlMsg3 = freezed,
  }) {
    return _then(_value.copyWith(
      updnLine: updnLine == freezed
          ? _value.updnLine
          : updnLine // ignore: cast_nullable_to_non_nullable
              as String,
      trainLineNm: trainLineNm == freezed
          ? _value.trainLineNm
          : trainLineNm // ignore: cast_nullable_to_non_nullable
              as String,
      statnNm: statnNm == freezed
          ? _value.statnNm
          : statnNm // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg2: arvlMsg2 == freezed
          ? _value.arvlMsg2
          : arvlMsg2 // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg3: arvlMsg3 == freezed
          ? _value.arvlMsg3
          : arvlMsg3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SubwayCopyWith<$Res> implements $SubwayCopyWith<$Res> {
  factory _$$_SubwayCopyWith(_$_Subway value, $Res Function(_$_Subway) then) =
      __$$_SubwayCopyWithImpl<$Res>;
  @override
  $Res call(
      {String updnLine,
      String trainLineNm,
      String statnNm,
      String arvlMsg2,
      String arvlMsg3});
}

/// @nodoc
class __$$_SubwayCopyWithImpl<$Res> extends _$SubwayCopyWithImpl<$Res>
    implements _$$_SubwayCopyWith<$Res> {
  __$$_SubwayCopyWithImpl(_$_Subway _value, $Res Function(_$_Subway) _then)
      : super(_value, (v) => _then(v as _$_Subway));

  @override
  _$_Subway get _value => super._value as _$_Subway;

  @override
  $Res call({
    Object? updnLine = freezed,
    Object? trainLineNm = freezed,
    Object? statnNm = freezed,
    Object? arvlMsg2 = freezed,
    Object? arvlMsg3 = freezed,
  }) {
    return _then(_$_Subway(
      updnLine: updnLine == freezed
          ? _value.updnLine
          : updnLine // ignore: cast_nullable_to_non_nullable
              as String,
      trainLineNm: trainLineNm == freezed
          ? _value.trainLineNm
          : trainLineNm // ignore: cast_nullable_to_non_nullable
              as String,
      statnNm: statnNm == freezed
          ? _value.statnNm
          : statnNm // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg2: arvlMsg2 == freezed
          ? _value.arvlMsg2
          : arvlMsg2 // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg3: arvlMsg3 == freezed
          ? _value.arvlMsg3
          : arvlMsg3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subway implements _Subway {
  const _$_Subway(
      {required this.updnLine,
      required this.trainLineNm,
      required this.statnNm,
      required this.arvlMsg2,
      required this.arvlMsg3});

  factory _$_Subway.fromJson(Map<String, dynamic> json) =>
      _$$_SubwayFromJson(json);

  @override
  final String updnLine;
  @override
  final String trainLineNm;
  @override
  final String statnNm;
  @override
  final String arvlMsg2;
  @override
  final String arvlMsg3;

  @override
  String toString() {
    return 'Subway(updnLine: $updnLine, trainLineNm: $trainLineNm, statnNm: $statnNm, arvlMsg2: $arvlMsg2, arvlMsg3: $arvlMsg3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subway &&
            const DeepCollectionEquality().equals(other.updnLine, updnLine) &&
            const DeepCollectionEquality()
                .equals(other.trainLineNm, trainLineNm) &&
            const DeepCollectionEquality().equals(other.statnNm, statnNm) &&
            const DeepCollectionEquality().equals(other.arvlMsg2, arvlMsg2) &&
            const DeepCollectionEquality().equals(other.arvlMsg3, arvlMsg3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(updnLine),
      const DeepCollectionEquality().hash(trainLineNm),
      const DeepCollectionEquality().hash(statnNm),
      const DeepCollectionEquality().hash(arvlMsg2),
      const DeepCollectionEquality().hash(arvlMsg3));

  @JsonKey(ignore: true)
  @override
  _$$_SubwayCopyWith<_$_Subway> get copyWith =>
      __$$_SubwayCopyWithImpl<_$_Subway>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubwayToJson(
      this,
    );
  }
}

abstract class _Subway implements Subway {
  const factory _Subway(
      {required final String updnLine,
      required final String trainLineNm,
      required final String statnNm,
      required final String arvlMsg2,
      required final String arvlMsg3}) = _$_Subway;

  factory _Subway.fromJson(Map<String, dynamic> json) = _$_Subway.fromJson;

  @override
  String get updnLine;
  @override
  String get trainLineNm;
  @override
  String get statnNm;
  @override
  String get arvlMsg2;
  @override
  String get arvlMsg3;
  @override
  @JsonKey(ignore: true)
  _$$_SubwayCopyWith<_$_Subway> get copyWith =>
      throw _privateConstructorUsedError;
}
