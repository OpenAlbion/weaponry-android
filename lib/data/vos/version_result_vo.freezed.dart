// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_result_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionResultVO _$VersionResultVOFromJson(Map<String, dynamic> json) {
  return _VersionResultVO.fromJson(json);
}

/// @nodoc
mixin _$VersionResultVO {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  bool get force => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionResultVOCopyWith<VersionResultVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionResultVOCopyWith<$Res> {
  factory $VersionResultVOCopyWith(
          VersionResultVO value, $Res Function(VersionResultVO) then) =
      _$VersionResultVOCopyWithImpl<$Res, VersionResultVO>;
  @useResult
  $Res call({String title, String description, String version, bool force});
}

/// @nodoc
class _$VersionResultVOCopyWithImpl<$Res, $Val extends VersionResultVO>
    implements $VersionResultVOCopyWith<$Res> {
  _$VersionResultVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? version = null,
    Object? force = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionResultVOCopyWith<$Res>
    implements $VersionResultVOCopyWith<$Res> {
  factory _$$_VersionResultVOCopyWith(
          _$_VersionResultVO value, $Res Function(_$_VersionResultVO) then) =
      __$$_VersionResultVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String version, bool force});
}

/// @nodoc
class __$$_VersionResultVOCopyWithImpl<$Res>
    extends _$VersionResultVOCopyWithImpl<$Res, _$_VersionResultVO>
    implements _$$_VersionResultVOCopyWith<$Res> {
  __$$_VersionResultVOCopyWithImpl(
      _$_VersionResultVO _value, $Res Function(_$_VersionResultVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? version = null,
    Object? force = null,
  }) {
    return _then(_$_VersionResultVO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionResultVO implements _VersionResultVO {
  _$_VersionResultVO(
      {this.title = "",
      this.description = "",
      this.version = "",
      this.force = false});

  factory _$_VersionResultVO.fromJson(Map<String, dynamic> json) =>
      _$$_VersionResultVOFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final bool force;

  @override
  String toString() {
    return 'VersionResultVO(title: $title, description: $description, version: $version, force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionResultVO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.force, force) || other.force == force));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, version, force);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionResultVOCopyWith<_$_VersionResultVO> get copyWith =>
      __$$_VersionResultVOCopyWithImpl<_$_VersionResultVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionResultVOToJson(
      this,
    );
  }
}

abstract class _VersionResultVO implements VersionResultVO {
  factory _VersionResultVO(
      {final String title,
      final String description,
      final String version,
      final bool force}) = _$_VersionResultVO;

  factory _VersionResultVO.fromJson(Map<String, dynamic> json) =
      _$_VersionResultVO.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get version;
  @override
  bool get force;
  @override
  @JsonKey(ignore: true)
  _$$_VersionResultVOCopyWith<_$_VersionResultVO> get copyWith =>
      throw _privateConstructorUsedError;
}
