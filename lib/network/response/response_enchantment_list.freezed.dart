// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_enchantment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseEnchantmentList _$ResponseEnchantmentListFromJson(
    Map<String, dynamic> json) {
  return _ResponseEnchantmentList.fromJson(json);
}

/// @nodoc
mixin _$ResponseEnchantmentList {
  List<EnchantmentVO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseEnchantmentListCopyWith<ResponseEnchantmentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEnchantmentListCopyWith<$Res> {
  factory $ResponseEnchantmentListCopyWith(ResponseEnchantmentList value,
          $Res Function(ResponseEnchantmentList) then) =
      _$ResponseEnchantmentListCopyWithImpl<$Res, ResponseEnchantmentList>;
  @useResult
  $Res call({List<EnchantmentVO> data});
}

/// @nodoc
class _$ResponseEnchantmentListCopyWithImpl<$Res,
        $Val extends ResponseEnchantmentList>
    implements $ResponseEnchantmentListCopyWith<$Res> {
  _$ResponseEnchantmentListCopyWithImpl(this._value, this._then);

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
              as List<EnchantmentVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseEnchantmentListCopyWith<$Res>
    implements $ResponseEnchantmentListCopyWith<$Res> {
  factory _$$_ResponseEnchantmentListCopyWith(_$_ResponseEnchantmentList value,
          $Res Function(_$_ResponseEnchantmentList) then) =
      __$$_ResponseEnchantmentListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EnchantmentVO> data});
}

/// @nodoc
class __$$_ResponseEnchantmentListCopyWithImpl<$Res>
    extends _$ResponseEnchantmentListCopyWithImpl<$Res,
        _$_ResponseEnchantmentList>
    implements _$$_ResponseEnchantmentListCopyWith<$Res> {
  __$$_ResponseEnchantmentListCopyWithImpl(_$_ResponseEnchantmentList _value,
      $Res Function(_$_ResponseEnchantmentList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResponseEnchantmentList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EnchantmentVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseEnchantmentList implements _ResponseEnchantmentList {
  _$_ResponseEnchantmentList({final List<EnchantmentVO> data = const []})
      : _data = data;

  factory _$_ResponseEnchantmentList.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseEnchantmentListFromJson(json);

  final List<EnchantmentVO> _data;
  @override
  @JsonKey()
  List<EnchantmentVO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseEnchantmentList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseEnchantmentList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseEnchantmentListCopyWith<_$_ResponseEnchantmentList>
      get copyWith =>
          __$$_ResponseEnchantmentListCopyWithImpl<_$_ResponseEnchantmentList>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseEnchantmentListToJson(
      this,
    );
  }
}

abstract class _ResponseEnchantmentList implements ResponseEnchantmentList {
  factory _ResponseEnchantmentList({final List<EnchantmentVO> data}) =
      _$_ResponseEnchantmentList;

  factory _ResponseEnchantmentList.fromJson(Map<String, dynamic> json) =
      _$_ResponseEnchantmentList.fromJson;

  @override
  List<EnchantmentVO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseEnchantmentListCopyWith<_$_ResponseEnchantmentList>
      get copyWith => throw _privateConstructorUsedError;
}
