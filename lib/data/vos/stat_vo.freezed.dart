// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatVO _$StatVOFromJson(Map<String, dynamic> json) {
  return _StatVO.fromJson(json);
}

/// @nodoc
mixin _$StatVO {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatVOCopyWith<StatVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatVOCopyWith<$Res> {
  factory $StatVOCopyWith(StatVO value, $Res Function(StatVO) then) =
      _$StatVOCopyWithImpl<$Res, StatVO>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$StatVOCopyWithImpl<$Res, $Val extends StatVO>
    implements $StatVOCopyWith<$Res> {
  _$StatVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatVOCopyWith<$Res> implements $StatVOCopyWith<$Res> {
  factory _$$_StatVOCopyWith(_$_StatVO value, $Res Function(_$_StatVO) then) =
      __$$_StatVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$_StatVOCopyWithImpl<$Res>
    extends _$StatVOCopyWithImpl<$Res, _$_StatVO>
    implements _$$_StatVOCopyWith<$Res> {
  __$$_StatVOCopyWithImpl(_$_StatVO _value, $Res Function(_$_StatVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$_StatVO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatVO implements _StatVO {
  _$_StatVO({this.name = "", this.value = ""});

  factory _$_StatVO.fromJson(Map<String, dynamic> json) =>
      _$$_StatVOFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'StatVO(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatVO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatVOCopyWith<_$_StatVO> get copyWith =>
      __$$_StatVOCopyWithImpl<_$_StatVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatVOToJson(
      this,
    );
  }
}

abstract class _StatVO implements StatVO {
  factory _StatVO({final String name, final String value}) = _$_StatVO;

  factory _StatVO.fromJson(Map<String, dynamic> json) = _$_StatVO.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_StatVOCopyWith<_$_StatVO> get copyWith =>
      throw _privateConstructorUsedError;
}
