// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'double_stat_vo.dart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoubleStatVO _$DoubleStatVOFromJson(Map<String, dynamic> json) {
  return _DoubleStatVO.fromJson(json);
}

/// @nodoc
mixin _$DoubleStatVO {
  StatVO get firstStat => throw _privateConstructorUsedError;
  StatVO get secondStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoubleStatVOCopyWith<DoubleStatVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleStatVOCopyWith<$Res> {
  factory $DoubleStatVOCopyWith(
          DoubleStatVO value, $Res Function(DoubleStatVO) then) =
      _$DoubleStatVOCopyWithImpl<$Res, DoubleStatVO>;
  @useResult
  $Res call({StatVO firstStat, StatVO secondStat});

  $StatVOCopyWith<$Res> get firstStat;
  $StatVOCopyWith<$Res> get secondStat;
}

/// @nodoc
class _$DoubleStatVOCopyWithImpl<$Res, $Val extends DoubleStatVO>
    implements $DoubleStatVOCopyWith<$Res> {
  _$DoubleStatVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstStat = null,
    Object? secondStat = null,
  }) {
    return _then(_value.copyWith(
      firstStat: null == firstStat
          ? _value.firstStat
          : firstStat // ignore: cast_nullable_to_non_nullable
              as StatVO,
      secondStat: null == secondStat
          ? _value.secondStat
          : secondStat // ignore: cast_nullable_to_non_nullable
              as StatVO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatVOCopyWith<$Res> get firstStat {
    return $StatVOCopyWith<$Res>(_value.firstStat, (value) {
      return _then(_value.copyWith(firstStat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatVOCopyWith<$Res> get secondStat {
    return $StatVOCopyWith<$Res>(_value.secondStat, (value) {
      return _then(_value.copyWith(secondStat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoubleStatVOCopyWith<$Res>
    implements $DoubleStatVOCopyWith<$Res> {
  factory _$$_DoubleStatVOCopyWith(
          _$_DoubleStatVO value, $Res Function(_$_DoubleStatVO) then) =
      __$$_DoubleStatVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatVO firstStat, StatVO secondStat});

  @override
  $StatVOCopyWith<$Res> get firstStat;
  @override
  $StatVOCopyWith<$Res> get secondStat;
}

/// @nodoc
class __$$_DoubleStatVOCopyWithImpl<$Res>
    extends _$DoubleStatVOCopyWithImpl<$Res, _$_DoubleStatVO>
    implements _$$_DoubleStatVOCopyWith<$Res> {
  __$$_DoubleStatVOCopyWithImpl(
      _$_DoubleStatVO _value, $Res Function(_$_DoubleStatVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstStat = null,
    Object? secondStat = null,
  }) {
    return _then(_$_DoubleStatVO(
      firstStat: null == firstStat
          ? _value.firstStat
          : firstStat // ignore: cast_nullable_to_non_nullable
              as StatVO,
      secondStat: null == secondStat
          ? _value.secondStat
          : secondStat // ignore: cast_nullable_to_non_nullable
              as StatVO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoubleStatVO implements _DoubleStatVO {
  _$_DoubleStatVO({required this.firstStat, required this.secondStat});

  factory _$_DoubleStatVO.fromJson(Map<String, dynamic> json) =>
      _$$_DoubleStatVOFromJson(json);

  @override
  final StatVO firstStat;
  @override
  final StatVO secondStat;

  @override
  String toString() {
    return 'DoubleStatVO(firstStat: $firstStat, secondStat: $secondStat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoubleStatVO &&
            (identical(other.firstStat, firstStat) ||
                other.firstStat == firstStat) &&
            (identical(other.secondStat, secondStat) ||
                other.secondStat == secondStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstStat, secondStat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoubleStatVOCopyWith<_$_DoubleStatVO> get copyWith =>
      __$$_DoubleStatVOCopyWithImpl<_$_DoubleStatVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoubleStatVOToJson(
      this,
    );
  }
}

abstract class _DoubleStatVO implements DoubleStatVO {
  factory _DoubleStatVO(
      {required final StatVO firstStat,
      required final StatVO secondStat}) = _$_DoubleStatVO;

  factory _DoubleStatVO.fromJson(Map<String, dynamic> json) =
      _$_DoubleStatVO.fromJson;

  @override
  StatVO get firstStat;
  @override
  StatVO get secondStat;
  @override
  @JsonKey(ignore: true)
  _$$_DoubleStatVOCopyWith<_$_DoubleStatVO> get copyWith =>
      throw _privateConstructorUsedError;
}
