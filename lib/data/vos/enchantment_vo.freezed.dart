// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enchantment_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EnchantmentVO _$EnchantmentVOFromJson(Map<String, dynamic> json) {
  return _EnchantmentVO.fromJson(json);
}

/// @nodoc
mixin _$EnchantmentVO {
  int get enchantment => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<QualityVO> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnchantmentVOCopyWith<EnchantmentVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnchantmentVOCopyWith<$Res> {
  factory $EnchantmentVOCopyWith(
          EnchantmentVO value, $Res Function(EnchantmentVO) then) =
      _$EnchantmentVOCopyWithImpl<$Res, EnchantmentVO>;
  @useResult
  $Res call({int enchantment, String icon, List<QualityVO> stats});
}

/// @nodoc
class _$EnchantmentVOCopyWithImpl<$Res, $Val extends EnchantmentVO>
    implements $EnchantmentVOCopyWith<$Res> {
  _$EnchantmentVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enchantment = null,
    Object? icon = null,
    Object? stats = null,
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
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<QualityVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnchantmentVOCopyWith<$Res>
    implements $EnchantmentVOCopyWith<$Res> {
  factory _$$_EnchantmentVOCopyWith(
          _$_EnchantmentVO value, $Res Function(_$_EnchantmentVO) then) =
      __$$_EnchantmentVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int enchantment, String icon, List<QualityVO> stats});
}

/// @nodoc
class __$$_EnchantmentVOCopyWithImpl<$Res>
    extends _$EnchantmentVOCopyWithImpl<$Res, _$_EnchantmentVO>
    implements _$$_EnchantmentVOCopyWith<$Res> {
  __$$_EnchantmentVOCopyWithImpl(
      _$_EnchantmentVO _value, $Res Function(_$_EnchantmentVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enchantment = null,
    Object? icon = null,
    Object? stats = null,
  }) {
    return _then(_$_EnchantmentVO(
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<QualityVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EnchantmentVO implements _EnchantmentVO {
  _$_EnchantmentVO(
      {required this.enchantment,
      this.icon = "",
      required final List<QualityVO> stats})
      : _stats = stats;

  factory _$_EnchantmentVO.fromJson(Map<String, dynamic> json) =>
      _$$_EnchantmentVOFromJson(json);

  @override
  final int enchantment;
  @override
  @JsonKey()
  final String icon;
  final List<QualityVO> _stats;
  @override
  List<QualityVO> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'EnchantmentVO(enchantment: $enchantment, icon: $icon, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnchantmentVO &&
            (identical(other.enchantment, enchantment) ||
                other.enchantment == enchantment) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enchantment, icon,
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnchantmentVOCopyWith<_$_EnchantmentVO> get copyWith =>
      __$$_EnchantmentVOCopyWithImpl<_$_EnchantmentVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnchantmentVOToJson(
      this,
    );
  }
}

abstract class _EnchantmentVO implements EnchantmentVO {
  factory _EnchantmentVO(
      {required final int enchantment,
      final String icon,
      required final List<QualityVO> stats}) = _$_EnchantmentVO;

  factory _EnchantmentVO.fromJson(Map<String, dynamic> json) =
      _$_EnchantmentVO.fromJson;

  @override
  int get enchantment;
  @override
  String get icon;
  @override
  List<QualityVO> get stats;
  @override
  @JsonKey(ignore: true)
  _$$_EnchantmentVOCopyWith<_$_EnchantmentVO> get copyWith =>
      throw _privateConstructorUsedError;
}
