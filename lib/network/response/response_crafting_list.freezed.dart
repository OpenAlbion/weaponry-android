// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_crafting_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseCraftingList _$ResponseCraftingListFromJson(Map<String, dynamic> json) {
  return _ResponseCraftingList.fromJson(json);
}

/// @nodoc
mixin _$ResponseCraftingList {
  List<CraftingEnchantmentVO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCraftingListCopyWith<ResponseCraftingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCraftingListCopyWith<$Res> {
  factory $ResponseCraftingListCopyWith(ResponseCraftingList value,
          $Res Function(ResponseCraftingList) then) =
      _$ResponseCraftingListCopyWithImpl<$Res, ResponseCraftingList>;
  @useResult
  $Res call({List<CraftingEnchantmentVO> data});
}

/// @nodoc
class _$ResponseCraftingListCopyWithImpl<$Res,
        $Val extends ResponseCraftingList>
    implements $ResponseCraftingListCopyWith<$Res> {
  _$ResponseCraftingListCopyWithImpl(this._value, this._then);

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
              as List<CraftingEnchantmentVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseCraftingListCopyWith<$Res>
    implements $ResponseCraftingListCopyWith<$Res> {
  factory _$$_ResponseCraftingListCopyWith(_$_ResponseCraftingList value,
          $Res Function(_$_ResponseCraftingList) then) =
      __$$_ResponseCraftingListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CraftingEnchantmentVO> data});
}

/// @nodoc
class __$$_ResponseCraftingListCopyWithImpl<$Res>
    extends _$ResponseCraftingListCopyWithImpl<$Res, _$_ResponseCraftingList>
    implements _$$_ResponseCraftingListCopyWith<$Res> {
  __$$_ResponseCraftingListCopyWithImpl(_$_ResponseCraftingList _value,
      $Res Function(_$_ResponseCraftingList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResponseCraftingList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CraftingEnchantmentVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseCraftingList implements _ResponseCraftingList {
  _$_ResponseCraftingList({required final List<CraftingEnchantmentVO> data})
      : _data = data;

  factory _$_ResponseCraftingList.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseCraftingListFromJson(json);

  final List<CraftingEnchantmentVO> _data;
  @override
  List<CraftingEnchantmentVO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseCraftingList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseCraftingList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCraftingListCopyWith<_$_ResponseCraftingList> get copyWith =>
      __$$_ResponseCraftingListCopyWithImpl<_$_ResponseCraftingList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseCraftingListToJson(
      this,
    );
  }
}

abstract class _ResponseCraftingList implements ResponseCraftingList {
  factory _ResponseCraftingList(
          {required final List<CraftingEnchantmentVO> data}) =
      _$_ResponseCraftingList;

  factory _ResponseCraftingList.fromJson(Map<String, dynamic> json) =
      _$_ResponseCraftingList.fromJson;

  @override
  List<CraftingEnchantmentVO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCraftingListCopyWith<_$_ResponseCraftingList> get copyWith =>
      throw _privateConstructorUsedError;
}
