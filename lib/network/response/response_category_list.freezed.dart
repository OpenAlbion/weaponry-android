// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_category_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseCategoryList _$ResponseCategoryListFromJson(Map<String, dynamic> json) {
  return _ResponseCategoryList.fromJson(json);
}

/// @nodoc
mixin _$ResponseCategoryList {
  List<CategoryVO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCategoryListCopyWith<ResponseCategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCategoryListCopyWith<$Res> {
  factory $ResponseCategoryListCopyWith(ResponseCategoryList value,
          $Res Function(ResponseCategoryList) then) =
      _$ResponseCategoryListCopyWithImpl<$Res, ResponseCategoryList>;
  @useResult
  $Res call({List<CategoryVO> data});
}

/// @nodoc
class _$ResponseCategoryListCopyWithImpl<$Res,
        $Val extends ResponseCategoryList>
    implements $ResponseCategoryListCopyWith<$Res> {
  _$ResponseCategoryListCopyWithImpl(this._value, this._then);

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
              as List<CategoryVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseCategoryListCopyWith<$Res>
    implements $ResponseCategoryListCopyWith<$Res> {
  factory _$$_ResponseCategoryListCopyWith(_$_ResponseCategoryList value,
          $Res Function(_$_ResponseCategoryList) then) =
      __$$_ResponseCategoryListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryVO> data});
}

/// @nodoc
class __$$_ResponseCategoryListCopyWithImpl<$Res>
    extends _$ResponseCategoryListCopyWithImpl<$Res, _$_ResponseCategoryList>
    implements _$$_ResponseCategoryListCopyWith<$Res> {
  __$$_ResponseCategoryListCopyWithImpl(_$_ResponseCategoryList _value,
      $Res Function(_$_ResponseCategoryList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResponseCategoryList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseCategoryList implements _ResponseCategoryList {
  _$_ResponseCategoryList({final List<CategoryVO> data = const []})
      : _data = data;

  factory _$_ResponseCategoryList.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseCategoryListFromJson(json);

  final List<CategoryVO> _data;
  @override
  @JsonKey()
  List<CategoryVO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseCategoryList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseCategoryList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCategoryListCopyWith<_$_ResponseCategoryList> get copyWith =>
      __$$_ResponseCategoryListCopyWithImpl<_$_ResponseCategoryList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseCategoryListToJson(
      this,
    );
  }
}

abstract class _ResponseCategoryList implements ResponseCategoryList {
  factory _ResponseCategoryList({final List<CategoryVO> data}) =
      _$_ResponseCategoryList;

  factory _ResponseCategoryList.fromJson(Map<String, dynamic> json) =
      _$_ResponseCategoryList.fromJson;

  @override
  List<CategoryVO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCategoryListCopyWith<_$_ResponseCategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}
