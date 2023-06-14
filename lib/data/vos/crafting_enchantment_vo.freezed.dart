// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crafting_enchantment_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftingEnchantmentVO _$CraftingEnchantmentVOFromJson(
    Map<String, dynamic> json) {
  return _CraftingEnchantmentVO.fromJson(json);
}

/// @nodoc
mixin _$CraftingEnchantmentVO {
  int get enchantment => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  CraftingItemVO get crafting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingEnchantmentVOCopyWith<CraftingEnchantmentVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingEnchantmentVOCopyWith<$Res> {
  factory $CraftingEnchantmentVOCopyWith(CraftingEnchantmentVO value,
          $Res Function(CraftingEnchantmentVO) then) =
      _$CraftingEnchantmentVOCopyWithImpl<$Res, CraftingEnchantmentVO>;
  @useResult
  $Res call({int enchantment, String icon, CraftingItemVO crafting});

  $CraftingItemVOCopyWith<$Res> get crafting;
}

/// @nodoc
class _$CraftingEnchantmentVOCopyWithImpl<$Res,
        $Val extends CraftingEnchantmentVO>
    implements $CraftingEnchantmentVOCopyWith<$Res> {
  _$CraftingEnchantmentVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enchantment = null,
    Object? icon = null,
    Object? crafting = null,
  }) {
    return _then(_value.copyWith(
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      crafting: null == crafting
          ? _value.crafting
          : crafting // ignore: cast_nullable_to_non_nullable
              as CraftingItemVO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CraftingItemVOCopyWith<$Res> get crafting {
    return $CraftingItemVOCopyWith<$Res>(_value.crafting, (value) {
      return _then(_value.copyWith(crafting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CraftingEnchantmentVOCopyWith<$Res>
    implements $CraftingEnchantmentVOCopyWith<$Res> {
  factory _$$_CraftingEnchantmentVOCopyWith(_$_CraftingEnchantmentVO value,
          $Res Function(_$_CraftingEnchantmentVO) then) =
      __$$_CraftingEnchantmentVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int enchantment, String icon, CraftingItemVO crafting});

  @override
  $CraftingItemVOCopyWith<$Res> get crafting;
}

/// @nodoc
class __$$_CraftingEnchantmentVOCopyWithImpl<$Res>
    extends _$CraftingEnchantmentVOCopyWithImpl<$Res, _$_CraftingEnchantmentVO>
    implements _$$_CraftingEnchantmentVOCopyWith<$Res> {
  __$$_CraftingEnchantmentVOCopyWithImpl(_$_CraftingEnchantmentVO _value,
      $Res Function(_$_CraftingEnchantmentVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enchantment = null,
    Object? icon = null,
    Object? crafting = null,
  }) {
    return _then(_$_CraftingEnchantmentVO(
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      crafting: null == crafting
          ? _value.crafting
          : crafting // ignore: cast_nullable_to_non_nullable
              as CraftingItemVO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CraftingEnchantmentVO implements _CraftingEnchantmentVO {
  _$_CraftingEnchantmentVO(
      {this.enchantment = 0, this.icon = "", required this.crafting});

  factory _$_CraftingEnchantmentVO.fromJson(Map<String, dynamic> json) =>
      _$$_CraftingEnchantmentVOFromJson(json);

  @override
  @JsonKey()
  final int enchantment;
  @override
  @JsonKey()
  final String icon;
  @override
  final CraftingItemVO crafting;

  @override
  String toString() {
    return 'CraftingEnchantmentVO(enchantment: $enchantment, icon: $icon, crafting: $crafting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CraftingEnchantmentVO &&
            (identical(other.enchantment, enchantment) ||
                other.enchantment == enchantment) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.crafting, crafting) ||
                other.crafting == crafting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enchantment, icon, crafting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CraftingEnchantmentVOCopyWith<_$_CraftingEnchantmentVO> get copyWith =>
      __$$_CraftingEnchantmentVOCopyWithImpl<_$_CraftingEnchantmentVO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftingEnchantmentVOToJson(
      this,
    );
  }
}

abstract class _CraftingEnchantmentVO implements CraftingEnchantmentVO {
  factory _CraftingEnchantmentVO(
      {final int enchantment,
      final String icon,
      required final CraftingItemVO crafting}) = _$_CraftingEnchantmentVO;

  factory _CraftingEnchantmentVO.fromJson(Map<String, dynamic> json) =
      _$_CraftingEnchantmentVO.fromJson;

  @override
  int get enchantment;
  @override
  String get icon;
  @override
  CraftingItemVO get crafting;
  @override
  @JsonKey(ignore: true)
  _$$_CraftingEnchantmentVOCopyWith<_$_CraftingEnchantmentVO> get copyWith =>
      throw _privateConstructorUsedError;
}
