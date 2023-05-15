// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quality_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QualityVO _$QualityVOFromJson(Map<String, dynamic> json) {
  return _QualityVO.fromJson(json);
}

/// @nodoc
mixin _$QualityVO {
  int get id => throw _privateConstructorUsedError;
  String get quality => throw _privateConstructorUsedError;
  int get enchantment => throw _privateConstructorUsedError;
  List<StatVO> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualityVOCopyWith<QualityVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualityVOCopyWith<$Res> {
  factory $QualityVOCopyWith(QualityVO value, $Res Function(QualityVO) then) =
      _$QualityVOCopyWithImpl<$Res, QualityVO>;
  @useResult
  $Res call({int id, String quality, int enchantment, List<StatVO> stats});
}

/// @nodoc
class _$QualityVOCopyWithImpl<$Res, $Val extends QualityVO>
    implements $QualityVOCopyWith<$Res> {
  _$QualityVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quality = null,
    Object? enchantment = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QualityVOCopyWith<$Res> implements $QualityVOCopyWith<$Res> {
  factory _$$_QualityVOCopyWith(
          _$_QualityVO value, $Res Function(_$_QualityVO) then) =
      __$$_QualityVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String quality, int enchantment, List<StatVO> stats});
}

/// @nodoc
class __$$_QualityVOCopyWithImpl<$Res>
    extends _$QualityVOCopyWithImpl<$Res, _$_QualityVO>
    implements _$$_QualityVOCopyWith<$Res> {
  __$$_QualityVOCopyWithImpl(
      _$_QualityVO _value, $Res Function(_$_QualityVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quality = null,
    Object? enchantment = null,
    Object? stats = null,
  }) {
    return _then(_$_QualityVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      enchantment: null == enchantment
          ? _value.enchantment
          : enchantment // ignore: cast_nullable_to_non_nullable
              as int,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QualityVO implements _QualityVO {
  _$_QualityVO(
      {required this.id,
      this.quality = "",
      required this.enchantment,
      required final List<StatVO> stats})
      : _stats = stats;

  factory _$_QualityVO.fromJson(Map<String, dynamic> json) =>
      _$$_QualityVOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String quality;
  @override
  final int enchantment;
  final List<StatVO> _stats;
  @override
  List<StatVO> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'QualityVO(id: $id, quality: $quality, enchantment: $enchantment, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QualityVO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.enchantment, enchantment) ||
                other.enchantment == enchantment) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, quality, enchantment,
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QualityVOCopyWith<_$_QualityVO> get copyWith =>
      __$$_QualityVOCopyWithImpl<_$_QualityVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QualityVOToJson(
      this,
    );
  }
}

abstract class _QualityVO implements QualityVO {
  factory _QualityVO(
      {required final int id,
      final String quality,
      required final int enchantment,
      required final List<StatVO> stats}) = _$_QualityVO;

  factory _QualityVO.fromJson(Map<String, dynamic> json) =
      _$_QualityVO.fromJson;

  @override
  int get id;
  @override
  String get quality;
  @override
  int get enchantment;
  @override
  List<StatVO> get stats;
  @override
  @JsonKey(ignore: true)
  _$$_QualityVOCopyWith<_$_QualityVO> get copyWith =>
      throw _privateConstructorUsedError;
}
