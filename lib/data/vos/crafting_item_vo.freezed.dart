// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crafting_item_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftingItemVO _$CraftingItemVOFromJson(Map<String, dynamic> json) {
  return _CraftingItemVO.fromJson(json);
}

/// @nodoc
mixin _$CraftingItemVO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "per_craft")
  dynamic get perCraft => throw _privateConstructorUsedError;
  int get enchantment => throw _privateConstructorUsedError;
  ConsumableVO get consumable => throw _privateConstructorUsedError;
  List<CraftingRequirementVO> get requirements =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingItemVOCopyWith<CraftingItemVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingItemVOCopyWith<$Res> {
  factory $CraftingItemVOCopyWith(
          CraftingItemVO value, $Res Function(CraftingItemVO) then) =
      _$CraftingItemVOCopyWithImpl<$Res, CraftingItemVO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "per_craft") dynamic perCraft,
      int enchantment,
      ConsumableVO consumable,
      List<CraftingRequirementVO> requirements});

  $ConsumableVOCopyWith<$Res> get consumable;
}

/// @nodoc
class _$CraftingItemVOCopyWithImpl<$Res, $Val extends CraftingItemVO>
    implements $CraftingItemVOCopyWith<$Res> {
  _$CraftingItemVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? perCraft = freezed,
    Object? enchantment = null,
    Object? consumable = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      perCraft: freezed == perCraft
          ? _value.perCraft
          : perCraft // ignore: cast_nullable_to_non_nullable
              as dynamic,
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      consumable: null == consumable
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as ConsumableVO,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<CraftingRequirementVO>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumableVOCopyWith<$Res> get consumable {
    return $ConsumableVOCopyWith<$Res>(_value.consumable, (value) {
      return _then(_value.copyWith(consumable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CraftingItemVOCopyWith<$Res>
    implements $CraftingItemVOCopyWith<$Res> {
  factory _$$_CraftingItemVOCopyWith(
          _$_CraftingItemVO value, $Res Function(_$_CraftingItemVO) then) =
      __$$_CraftingItemVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "per_craft") dynamic perCraft,
      int enchantment,
      ConsumableVO consumable,
      List<CraftingRequirementVO> requirements});

  @override
  $ConsumableVOCopyWith<$Res> get consumable;
}

/// @nodoc
class __$$_CraftingItemVOCopyWithImpl<$Res>
    extends _$CraftingItemVOCopyWithImpl<$Res, _$_CraftingItemVO>
    implements _$$_CraftingItemVOCopyWith<$Res> {
  __$$_CraftingItemVOCopyWithImpl(
      _$_CraftingItemVO _value, $Res Function(_$_CraftingItemVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? perCraft = freezed,
    Object? enchantment = null,
    Object? consumable = null,
    Object? requirements = null,
  }) {
    return _then(_$_CraftingItemVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      perCraft: freezed == perCraft ? _value.perCraft! : perCraft,
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      consumable: null == consumable
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as ConsumableVO,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<CraftingRequirementVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CraftingItemVO implements _CraftingItemVO {
  _$_CraftingItemVO(
      {required this.id,
      @JsonKey(name: "per_craft") this.perCraft = 0,
      required this.enchantment,
      required this.consumable,
      final List<CraftingRequirementVO> requirements = const []})
      : _requirements = requirements;

  factory _$_CraftingItemVO.fromJson(Map<String, dynamic> json) =>
      _$$_CraftingItemVOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "per_craft")
  final dynamic perCraft;
  @override
  final int enchantment;
  @override
  final ConsumableVO consumable;
  final List<CraftingRequirementVO> _requirements;
  @override
  @JsonKey()
  List<CraftingRequirementVO> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  @override
  String toString() {
    return 'CraftingItemVO(id: $id, perCraft: $perCraft, enchantment: $enchantment, consumable: $consumable, requirements: $requirements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CraftingItemVO &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.perCraft, perCraft) &&
            (identical(other.enchantment, enchantment) ||
                other.enchantment == enchantment) &&
            (identical(other.consumable, consumable) ||
                other.consumable == consumable) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(perCraft),
      enchantment,
      consumable,
      const DeepCollectionEquality().hash(_requirements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CraftingItemVOCopyWith<_$_CraftingItemVO> get copyWith =>
      __$$_CraftingItemVOCopyWithImpl<_$_CraftingItemVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftingItemVOToJson(
      this,
    );
  }
}

abstract class _CraftingItemVO implements CraftingItemVO {
  factory _CraftingItemVO(
      {required final int id,
      @JsonKey(name: "per_craft") final dynamic perCraft,
      required final int enchantment,
      required final ConsumableVO consumable,
      final List<CraftingRequirementVO> requirements}) = _$_CraftingItemVO;

  factory _CraftingItemVO.fromJson(Map<String, dynamic> json) =
      _$_CraftingItemVO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "per_craft")
  dynamic get perCraft;
  @override
  int get enchantment;
  @override
  ConsumableVO get consumable;
  @override
  List<CraftingRequirementVO> get requirements;
  @override
  @JsonKey(ignore: true)
  _$$_CraftingItemVOCopyWith<_$_CraftingItemVO> get copyWith =>
      throw _privateConstructorUsedError;
}
