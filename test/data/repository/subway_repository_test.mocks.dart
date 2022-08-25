// Mocks generated by Mockito 5.3.0 from annotations
// in seoul_subway/test/repository/subway_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:seoul_subway/data/model/subway_dto.dart' as _i2;
import 'package:seoul_subway/data/source/subway_api.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSubwayDto_0 extends _i1.SmartFake implements _i2.SubwayDto {
  _FakeSubwayDto_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [SubwayApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubwayApi extends _i1.Mock implements _i3.SubwayApi {
  MockSubwayApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.SubwayDto> getList(String? query) =>
      (super.noSuchMethod(Invocation.method(#getList, [query]),
              returnValue: _i4.Future<_i2.SubwayDto>.value(
                  _FakeSubwayDto_0(this, Invocation.method(#getList, [query]))))
          as _i4.Future<_i2.SubwayDto>);
}