// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_item_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseItemList _$ResponseItemListFromJson(Map<String, dynamic> json) {
  return _ResponseItemList.fromJson(json);
}

/// @nodoc
mixin _$ResponseItemList {
  List<ItemVO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseItemListCopyWith<ResponseItemList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseItemListCopyWith<$Res> {
  factory $ResponseItemListCopyWith(
          ResponseItemList value, $Res Function(ResponseItemList) then) =
      _$ResponseItemListCopyWithImpl<$Res, ResponseItemList>;
  @useResult
  $Res call({List<ItemVO> data});
}

/// @nodoc
class _$ResponseItemListCopyWithImpl<$Res, $Val extends ResponseItemList>
    implements $ResponseItemListCopyWith<$Res> {
  _$ResponseItemListCopyWithImpl(this._value, this._then);

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
              as List<ItemVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseItemListCopyWith<$Res>
    implements $ResponseItemListCopyWith<$Res> {
  factory _$$_ResponseItemListCopyWith(
          _$_ResponseItemList value, $Res Function(_$_ResponseItemList) then) =
      __$$_ResponseItemListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemVO> data});
}

/// @nodoc
class __$$_ResponseItemListCopyWithImpl<$Res>
    extends _$ResponseItemListCopyWithImpl<$Res, _$_ResponseItemList>
    implements _$$_ResponseItemListCopyWith<$Res> {
  __$$_ResponseItemListCopyWithImpl(
      _$_ResponseItemList _value, $Res Function(_$_ResponseItemList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResponseItemList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ItemVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseItemList implements _ResponseItemList {
  _$_ResponseItemList({required final List<ItemVO> data}) : _data = data;

  factory _$_ResponseItemList.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseItemListFromJson(json);

  final List<ItemVO> _data;
  @override
  List<ItemVO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseItemList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseItemList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseItemListCopyWith<_$_ResponseItemList> get copyWith =>
      __$$_ResponseItemListCopyWithImpl<_$_ResponseItemList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseItemListToJson(
      this,
    );
  }
}

abstract class _ResponseItemList implements ResponseItemList {
  factory _ResponseItemList({required final List<ItemVO> data}) =
      _$_ResponseItemList;

  factory _ResponseItemList.fromJson(Map<String, dynamic> json) =
      _$_ResponseItemList.fromJson;

  @override
  List<ItemVO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseItemListCopyWith<_$_ResponseItemList> get copyWith =>
      throw _privateConstructorUsedError;
}
