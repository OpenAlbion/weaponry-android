// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryVO _$CategoryVOFromJson(Map<String, dynamic> json) {
  return _CategoryVO.fromJson(json);
}

/// @nodoc
mixin _$CategoryVO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<SubCategoryVO> get subcategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryVOCopyWith<CategoryVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryVOCopyWith<$Res> {
  factory $CategoryVOCopyWith(
          CategoryVO value, $Res Function(CategoryVO) then) =
      _$CategoryVOCopyWithImpl<$Res, CategoryVO>;
  @useResult
  $Res call(
      {int id, String name, String type, List<SubCategoryVO> subcategories});
}

/// @nodoc
class _$CategoryVOCopyWithImpl<$Res, $Val extends CategoryVO>
    implements $CategoryVOCopyWith<$Res> {
  _$CategoryVOCopyWithImpl(this._value, this._then);

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
    Object? subcategories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryVOCopyWith<$Res>
    implements $CategoryVOCopyWith<$Res> {
  factory _$$_CategoryVOCopyWith(
          _$_CategoryVO value, $Res Function(_$_CategoryVO) then) =
      __$$_CategoryVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String type, List<SubCategoryVO> subcategories});
}

/// @nodoc
class __$$_CategoryVOCopyWithImpl<$Res>
    extends _$CategoryVOCopyWithImpl<$Res, _$_CategoryVO>
    implements _$$_CategoryVOCopyWith<$Res> {
  __$$_CategoryVOCopyWithImpl(
      _$_CategoryVO _value, $Res Function(_$_CategoryVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? subcategories = null,
  }) {
    return _then(_$_CategoryVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryVO implements _CategoryVO {
  _$_CategoryVO(
      {required this.id,
      this.name = "",
      this.type = "",
      final List<SubCategoryVO> subcategories = const []})
      : _subcategories = subcategories;

  factory _$_CategoryVO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryVOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  final List<SubCategoryVO> _subcategories;
  @override
  @JsonKey()
  List<SubCategoryVO> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  String toString() {
    return 'CategoryVO(id: $id, name: $name, type: $type, subcategories: $subcategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryVO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type,
      const DeepCollectionEquality().hash(_subcategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryVOCopyWith<_$_CategoryVO> get copyWith =>
      __$$_CategoryVOCopyWithImpl<_$_CategoryVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryVOToJson(
      this,
    );
  }
}

abstract class _CategoryVO implements CategoryVO {
  factory _CategoryVO(
      {required final int id,
      final String name,
      final String type,
      final List<SubCategoryVO> subcategories}) = _$_CategoryVO;

  factory _CategoryVO.fromJson(Map<String, dynamic> json) =
      _$_CategoryVO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  List<SubCategoryVO> get subcategories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryVOCopyWith<_$_CategoryVO> get copyWith =>
      throw _privateConstructorUsedError;
}
