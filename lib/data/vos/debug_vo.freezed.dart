// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebugVO _$DebugVOFromJson(Map<String, dynamic> json) {
  return _DebugVO.fromJson(json);
}

/// @nodoc
mixin _$DebugVO {
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebugVOCopyWith<DebugVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugVOCopyWith<$Res> {
  factory $DebugVOCopyWith(DebugVO value, $Res Function(DebugVO) then) =
      _$DebugVOCopyWithImpl<$Res, DebugVO>;
  @useResult
  $Res call({String version});
}

/// @nodoc
class _$DebugVOCopyWithImpl<$Res, $Val extends DebugVO>
    implements $DebugVOCopyWith<$Res> {
  _$DebugVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebugVOCopyWith<$Res> implements $DebugVOCopyWith<$Res> {
  factory _$$_DebugVOCopyWith(
          _$_DebugVO value, $Res Function(_$_DebugVO) then) =
      __$$_DebugVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version});
}

/// @nodoc
class __$$_DebugVOCopyWithImpl<$Res>
    extends _$DebugVOCopyWithImpl<$Res, _$_DebugVO>
    implements _$$_DebugVOCopyWith<$Res> {
  __$$_DebugVOCopyWithImpl(_$_DebugVO _value, $Res Function(_$_DebugVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$_DebugVO(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebugVO implements _DebugVO {
  _$_DebugVO({this.version = ""});

  factory _$_DebugVO.fromJson(Map<String, dynamic> json) =>
      _$$_DebugVOFromJson(json);

  @override
  @JsonKey()
  final String version;

  @override
  String toString() {
    return 'DebugVO(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebugVO &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebugVOCopyWith<_$_DebugVO> get copyWith =>
      __$$_DebugVOCopyWithImpl<_$_DebugVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebugVOToJson(
      this,
    );
  }
}

abstract class _DebugVO implements DebugVO {
  factory _DebugVO({final String version}) = _$_DebugVO;

  factory _DebugVO.fromJson(Map<String, dynamic> json) = _$_DebugVO.fromJson;

  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_DebugVOCopyWith<_$_DebugVO> get copyWith =>
      throw _privateConstructorUsedError;
}
