// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubCategoryVO _$SubCategoryVOFromJson(Map<String, dynamic> json) {
  return _SubCategoryVO.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryVO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryVOCopyWith<SubCategoryVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryVOCopyWith<$Res> {
  factory $SubCategoryVOCopyWith(
          SubCategoryVO value, $Res Function(SubCategoryVO) then) =
      _$SubCategoryVOCopyWithImpl<$Res, SubCategoryVO>;
  @useResult
  $Res call({String id, String name, String type});
}

/// @nodoc
class _$SubCategoryVOCopyWithImpl<$Res, $Val extends SubCategoryVO>
    implements $SubCategoryVOCopyWith<$Res> {
  _$SubCategoryVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubCategoryVOCopyWith<$Res>
    implements $SubCategoryVOCopyWith<$Res> {
  factory _$$_SubCategoryVOCopyWith(
          _$_SubCategoryVO value, $Res Function(_$_SubCategoryVO) then) =
      __$$_SubCategoryVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String type});
}

/// @nodoc
class __$$_SubCategoryVOCopyWithImpl<$Res>
    extends _$SubCategoryVOCopyWithImpl<$Res, _$_SubCategoryVO>
    implements _$$_SubCategoryVOCopyWith<$Res> {
  __$$_SubCategoryVOCopyWithImpl(
      _$_SubCategoryVO _value, $Res Function(_$_SubCategoryVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_SubCategoryVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubCategoryVO implements _SubCategoryVO {
  _$_SubCategoryVO({this.id = "", this.name = "", this.type = ""});

  factory _$_SubCategoryVO.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryVOFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'SubCategoryVO(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryVO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryVOCopyWith<_$_SubCategoryVO> get copyWith =>
      __$$_SubCategoryVOCopyWithImpl<_$_SubCategoryVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryVOToJson(
      this,
    );
  }
}

abstract class _SubCategoryVO implements SubCategoryVO {
  factory _SubCategoryVO(
      {final String id,
      final String name,
      final String type}) = _$_SubCategoryVO;

  factory _SubCategoryVO.fromJson(Map<String, dynamic> json) =
      _$_SubCategoryVO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryVOCopyWith<_$_SubCategoryVO> get copyWith =>
      throw _privateConstructorUsedError;
}
