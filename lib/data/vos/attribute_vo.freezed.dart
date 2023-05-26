// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributeVO _$AttributeVOFromJson(Map<String, dynamic> json) {
  return _AttributeVO.fromJson(json);
}

/// @nodoc
mixin _$AttributeVO {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeVOCopyWith<AttributeVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeVOCopyWith<$Res> {
  factory $AttributeVOCopyWith(
          AttributeVO value, $Res Function(AttributeVO) then) =
      _$AttributeVOCopyWithImpl<$Res, AttributeVO>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$AttributeVOCopyWithImpl<$Res, $Val extends AttributeVO>
    implements $AttributeVOCopyWith<$Res> {
  _$AttributeVOCopyWithImpl(this._value, this._then);

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
abstract class _$$_AttributeVOCopyWith<$Res>
    implements $AttributeVOCopyWith<$Res> {
  factory _$$_AttributeVOCopyWith(
          _$_AttributeVO value, $Res Function(_$_AttributeVO) then) =
      __$$_AttributeVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$_AttributeVOCopyWithImpl<$Res>
    extends _$AttributeVOCopyWithImpl<$Res, _$_AttributeVO>
    implements _$$_AttributeVOCopyWith<$Res> {
  __$$_AttributeVOCopyWithImpl(
      _$_AttributeVO _value, $Res Function(_$_AttributeVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$_AttributeVO(
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
class _$_AttributeVO implements _AttributeVO {
  _$_AttributeVO({this.name = "", this.value = ""});

  factory _$_AttributeVO.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeVOFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'AttributeVO(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributeVO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeVOCopyWith<_$_AttributeVO> get copyWith =>
      __$$_AttributeVOCopyWithImpl<_$_AttributeVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeVOToJson(
      this,
    );
  }
}

abstract class _AttributeVO implements AttributeVO {
  factory _AttributeVO({final String name, final String value}) =
      _$_AttributeVO;

  factory _AttributeVO.fromJson(Map<String, dynamic> json) =
      _$_AttributeVO.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeVOCopyWith<_$_AttributeVO> get copyWith =>
      throw _privateConstructorUsedError;
}
