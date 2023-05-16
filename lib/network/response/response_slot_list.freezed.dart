// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_slot_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseSlotList _$ResponseSlotListFromJson(Map<String, dynamic> json) {
  return _ResponseSlotList.fromJson(json);
}

/// @nodoc
mixin _$ResponseSlotList {
  List<SlotVO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSlotListCopyWith<ResponseSlotList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSlotListCopyWith<$Res> {
  factory $ResponseSlotListCopyWith(
          ResponseSlotList value, $Res Function(ResponseSlotList) then) =
      _$ResponseSlotListCopyWithImpl<$Res, ResponseSlotList>;
  @useResult
  $Res call({List<SlotVO> data});
}

/// @nodoc
class _$ResponseSlotListCopyWithImpl<$Res, $Val extends ResponseSlotList>
    implements $ResponseSlotListCopyWith<$Res> {
  _$ResponseSlotListCopyWithImpl(this._value, this._then);

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
              as List<SlotVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseSlotListCopyWith<$Res>
    implements $ResponseSlotListCopyWith<$Res> {
  factory _$$_ResponseSlotListCopyWith(
          _$_ResponseSlotList value, $Res Function(_$_ResponseSlotList) then) =
      __$$_ResponseSlotListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlotVO> data});
}

/// @nodoc
class __$$_ResponseSlotListCopyWithImpl<$Res>
    extends _$ResponseSlotListCopyWithImpl<$Res, _$_ResponseSlotList>
    implements _$$_ResponseSlotListCopyWith<$Res> {
  __$$_ResponseSlotListCopyWithImpl(
      _$_ResponseSlotList _value, $Res Function(_$_ResponseSlotList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResponseSlotList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SlotVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseSlotList implements _ResponseSlotList {
  _$_ResponseSlotList({final List<SlotVO> data = const []}) : _data = data;

  factory _$_ResponseSlotList.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseSlotListFromJson(json);

  final List<SlotVO> _data;
  @override
  @JsonKey()
  List<SlotVO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseSlotList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseSlotList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseSlotListCopyWith<_$_ResponseSlotList> get copyWith =>
      __$$_ResponseSlotListCopyWithImpl<_$_ResponseSlotList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseSlotListToJson(
      this,
    );
  }
}

abstract class _ResponseSlotList implements ResponseSlotList {
  factory _ResponseSlotList({final List<SlotVO> data}) = _$_ResponseSlotList;

  factory _ResponseSlotList.fromJson(Map<String, dynamic> json) =
      _$_ResponseSlotList.fromJson;

  @override
  List<SlotVO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseSlotListCopyWith<_$_ResponseSlotList> get copyWith =>
      throw _privateConstructorUsedError;
}
