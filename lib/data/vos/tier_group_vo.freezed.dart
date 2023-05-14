// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tier_group_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TierGroupVO _$TierGroupVOFromJson(Map<String, dynamic> json) {
  return _TierGroupVO.fromJson(json);
}

/// @nodoc
mixin _$TierGroupVO {
  String get name => throw _privateConstructorUsedError;
  dynamic get tier => throw _privateConstructorUsedError;
  List<ItemVO> get itemList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TierGroupVOCopyWith<TierGroupVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TierGroupVOCopyWith<$Res> {
  factory $TierGroupVOCopyWith(
          TierGroupVO value, $Res Function(TierGroupVO) then) =
      _$TierGroupVOCopyWithImpl<$Res, TierGroupVO>;
  @useResult
  $Res call({String name, dynamic tier, List<ItemVO> itemList});
}

/// @nodoc
class _$TierGroupVOCopyWithImpl<$Res, $Val extends TierGroupVO>
    implements $TierGroupVOCopyWith<$Res> {
  _$TierGroupVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tier = freezed,
    Object? itemList = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: freezed == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ItemVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TierGroupVOCopyWith<$Res>
    implements $TierGroupVOCopyWith<$Res> {
  factory _$$_TierGroupVOCopyWith(
          _$_TierGroupVO value, $Res Function(_$_TierGroupVO) then) =
      __$$_TierGroupVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, dynamic tier, List<ItemVO> itemList});
}

/// @nodoc
class __$$_TierGroupVOCopyWithImpl<$Res>
    extends _$TierGroupVOCopyWithImpl<$Res, _$_TierGroupVO>
    implements _$$_TierGroupVOCopyWith<$Res> {
  __$$_TierGroupVOCopyWithImpl(
      _$_TierGroupVO _value, $Res Function(_$_TierGroupVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tier = freezed,
    Object? itemList = null,
  }) {
    return _then(_$_TierGroupVO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: freezed == tier ? _value.tier! : tier,
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ItemVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TierGroupVO implements _TierGroupVO {
  _$_TierGroupVO(
      {this.name = "", this.tier = "", required final List<ItemVO> itemList})
      : _itemList = itemList;

  factory _$_TierGroupVO.fromJson(Map<String, dynamic> json) =>
      _$$_TierGroupVOFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final dynamic tier;
  final List<ItemVO> _itemList;
  @override
  List<ItemVO> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'TierGroupVO(name: $name, tier: $tier, itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TierGroupVO &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.tier, tier) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(tier),
      const DeepCollectionEquality().hash(_itemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TierGroupVOCopyWith<_$_TierGroupVO> get copyWith =>
      __$$_TierGroupVOCopyWithImpl<_$_TierGroupVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TierGroupVOToJson(
      this,
    );
  }
}

abstract class _TierGroupVO implements TierGroupVO {
  factory _TierGroupVO(
      {final String name,
      final dynamic tier,
      required final List<ItemVO> itemList}) = _$_TierGroupVO;

  factory _TierGroupVO.fromJson(Map<String, dynamic> json) =
      _$_TierGroupVO.fromJson;

  @override
  String get name;
  @override
  dynamic get tier;
  @override
  List<ItemVO> get itemList;
  @override
  @JsonKey(ignore: true)
  _$$_TierGroupVOCopyWith<_$_TierGroupVO> get copyWith =>
      throw _privateConstructorUsedError;
}
