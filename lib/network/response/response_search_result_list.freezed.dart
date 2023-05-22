// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_search_result_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseSearchResultList _$ResponseSearchResultListFromJson(
    Map<String, dynamic> json) {
  return _ResponseSearchResultList.fromJson(json);
}

/// @nodoc
mixin _$ResponseSearchResultList {
  List<SearchResultVO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSearchResultListCopyWith<ResponseSearchResultList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSearchResultListCopyWith<$Res> {
  factory $ResponseSearchResultListCopyWith(ResponseSearchResultList value,
          $Res Function(ResponseSearchResultList) then) =
      _$ResponseSearchResultListCopyWithImpl<$Res, ResponseSearchResultList>;
  @useResult
  $Res call({List<SearchResultVO> data});
}

/// @nodoc
class _$ResponseSearchResultListCopyWithImpl<$Res,
        $Val extends ResponseSearchResultList>
    implements $ResponseSearchResultListCopyWith<$Res> {
  _$ResponseSearchResultListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchResultVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseSearchResultListCopyWith<$Res>
    implements $ResponseSearchResultListCopyWith<$Res> {
  factory _$$_ResponseSearchResultListCopyWith(
          _$_ResponseSearchResultList value,
          $Res Function(_$_ResponseSearchResultList) then) =
      __$$_ResponseSearchResultListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchResultVO> data});
}

/// @nodoc
class __$$_ResponseSearchResultListCopyWithImpl<$Res>
    extends _$ResponseSearchResultListCopyWithImpl<$Res,
        _$_ResponseSearchResultList>
    implements _$$_ResponseSearchResultListCopyWith<$Res> {
  __$$_ResponseSearchResultListCopyWithImpl(_$_ResponseSearchResultList _value,
      $Res Function(_$_ResponseSearchResultList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResponseSearchResultList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchResultVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseSearchResultList implements _ResponseSearchResultList {
  _$_ResponseSearchResultList({final List<SearchResultVO> data = const []})
      : _data = data;

  factory _$_ResponseSearchResultList.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseSearchResultListFromJson(json);

  final List<SearchResultVO> _data;
  @override
  @JsonKey()
  List<SearchResultVO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseSearchResultList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseSearchResultList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseSearchResultListCopyWith<_$_ResponseSearchResultList>
      get copyWith => __$$_ResponseSearchResultListCopyWithImpl<
          _$_ResponseSearchResultList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseSearchResultListToJson(
      this,
    );
  }
}

abstract class _ResponseSearchResultList implements ResponseSearchResultList {
  factory _ResponseSearchResultList({final List<SearchResultVO> data}) =
      _$_ResponseSearchResultList;

  factory _ResponseSearchResultList.fromJson(Map<String, dynamic> json) =
      _$_ResponseSearchResultList.fromJson;

  @override
  List<SearchResultVO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseSearchResultListCopyWith<_$_ResponseSearchResultList>
      get copyWith => throw _privateConstructorUsedError;
}
