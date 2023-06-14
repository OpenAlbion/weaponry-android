// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crafting_requirement_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftingRequirementVO _$CraftingRequirementVOFromJson(
    Map<String, dynamic> json) {
  return _CraftingRequirementVO.fromJson(json);
}

/// @nodoc
mixin _$CraftingRequirementVO {
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingRequirementVOCopyWith<CraftingRequirementVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingRequirementVOCopyWith<$Res> {
  factory $CraftingRequirementVOCopyWith(CraftingRequirementVO value,
          $Res Function(CraftingRequirementVO) then) =
      _$CraftingRequirementVOCopyWithImpl<$Res, CraftingRequirementVO>;
  @useResult
  $Res call({String icon, String name, int value, String identifier});
}

/// @nodoc
class _$CraftingRequirementVOCopyWithImpl<$Res,
        $Val extends CraftingRequirementVO>
    implements $CraftingRequirementVOCopyWith<$Res> {
  _$CraftingRequirementVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? value = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CraftingRequirementVOCopyWith<$Res>
    implements $CraftingRequirementVOCopyWith<$Res> {
  factory _$$_CraftingRequirementVOCopyWith(_$_CraftingRequirementVO value,
          $Res Function(_$_CraftingRequirementVO) then) =
      __$$_CraftingRequirementVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String name, int value, String identifier});
}

/// @nodoc
class __$$_CraftingRequirementVOCopyWithImpl<$Res>
    extends _$CraftingRequirementVOCopyWithImpl<$Res, _$_CraftingRequirementVO>
    implements _$$_CraftingRequirementVOCopyWith<$Res> {
  __$$_CraftingRequirementVOCopyWithImpl(_$_CraftingRequirementVO _value,
      $Res Function(_$_CraftingRequirementVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? value = null,
    Object? identifier = null,
  }) {
    return _then(_$_CraftingRequirementVO(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CraftingRequirementVO implements _CraftingRequirementVO {
  _$_CraftingRequirementVO(
      {this.icon = "", this.name = "", this.value = 0, this.identifier = ""});

  factory _$_CraftingRequirementVO.fromJson(Map<String, dynamic> json) =>
      _$$_CraftingRequirementVOFromJson(json);

  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int value;
  @override
  @JsonKey()
  final String identifier;

  @override
  String toString() {
    return 'CraftingRequirementVO(icon: $icon, name: $name, value: $value, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CraftingRequirementVO &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, name, value, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CraftingRequirementVOCopyWith<_$_CraftingRequirementVO> get copyWith =>
      __$$_CraftingRequirementVOCopyWithImpl<_$_CraftingRequirementVO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftingRequirementVOToJson(
      this,
    );
  }
}

abstract class _CraftingRequirementVO implements CraftingRequirementVO {
  factory _CraftingRequirementVO(
      {final String icon,
      final String name,
      final int value,
      final String identifier}) = _$_CraftingRequirementVO;

  factory _CraftingRequirementVO.fromJson(Map<String, dynamic> json) =
      _$_CraftingRequirementVO.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  int get value;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_CraftingRequirementVOCopyWith<_$_CraftingRequirementVO> get copyWith =>
      throw _privateConstructorUsedError;
}
