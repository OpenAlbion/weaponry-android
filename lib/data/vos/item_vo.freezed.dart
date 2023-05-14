// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemVO _$ItemVOFromJson(Map<String, dynamic> json) {
  return _ItemVO.fromJson(json);
}

/// @nodoc
mixin _$ItemVO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "tire")
  String get tier => throw _privateConstructorUsedError;
  @JsonKey(name: "item_power")
  int get itemPower => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemVOCopyWith<ItemVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemVOCopyWith<$Res> {
  factory $ItemVOCopyWith(ItemVO value, $Res Function(ItemVO) then) =
      _$ItemVOCopyWithImpl<$Res, ItemVO>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "tire") String tier,
      @JsonKey(name: "item_power") int itemPower,
      String icon});
}

/// @nodoc
class _$ItemVOCopyWithImpl<$Res, $Val extends ItemVO>
    implements $ItemVOCopyWith<$Res> {
  _$ItemVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tier = null,
    Object? itemPower = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      itemPower: null == itemPower
          ? _value.itemPower
          : itemPower // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemVOCopyWith<$Res> implements $ItemVOCopyWith<$Res> {
  factory _$$_ItemVOCopyWith(_$_ItemVO value, $Res Function(_$_ItemVO) then) =
      __$$_ItemVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "tire") String tier,
      @JsonKey(name: "item_power") int itemPower,
      String icon});
}

/// @nodoc
class __$$_ItemVOCopyWithImpl<$Res>
    extends _$ItemVOCopyWithImpl<$Res, _$_ItemVO>
    implements _$$_ItemVOCopyWith<$Res> {
  __$$_ItemVOCopyWithImpl(_$_ItemVO _value, $Res Function(_$_ItemVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tier = null,
    Object? itemPower = null,
    Object? icon = null,
  }) {
    return _then(_$_ItemVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      itemPower: null == itemPower
          ? _value.itemPower
          : itemPower // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemVO implements _ItemVO {
  _$_ItemVO(
      {required this.id,
      this.name = "",
      @JsonKey(name: "tire") this.tier = "",
      @JsonKey(name: "item_power") required this.itemPower,
      this.icon = ""});

  factory _$_ItemVO.fromJson(Map<String, dynamic> json) =>
      _$$_ItemVOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: "tire")
  final String tier;
  @override
  @JsonKey(name: "item_power")
  final int itemPower;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'ItemVO(id: $id, name: $name, tier: $tier, itemPower: $itemPower, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemVO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.itemPower, itemPower) ||
                other.itemPower == itemPower) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tier, itemPower, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemVOCopyWith<_$_ItemVO> get copyWith =>
      __$$_ItemVOCopyWithImpl<_$_ItemVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemVOToJson(
      this,
    );
  }
}

abstract class _ItemVO implements ItemVO {
  factory _ItemVO(
      {required final int id,
      final String name,
      @JsonKey(name: "tire") final String tier,
      @JsonKey(name: "item_power") required final int itemPower,
      final String icon}) = _$_ItemVO;

  factory _ItemVO.fromJson(Map<String, dynamic> json) = _$_ItemVO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "tire")
  String get tier;
  @override
  @JsonKey(name: "item_power")
  int get itemPower;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ItemVOCopyWith<_$_ItemVO> get copyWith =>
      throw _privateConstructorUsedError;
}
