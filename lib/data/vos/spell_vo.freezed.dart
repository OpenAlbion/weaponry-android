// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spell_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpellVO _$SpellVOFromJson(Map<String, dynamic> json) {
  return _SpellVO.fromJson(json);
}

/// @nodoc
mixin _$SpellVO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slot => throw _privateConstructorUsedError;
  String get preview => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "description_html")
  String get descriptionHtml => throw _privateConstructorUsedError;
  List<AttributeVO> get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpellVOCopyWith<SpellVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellVOCopyWith<$Res> {
  factory $SpellVOCopyWith(SpellVO value, $Res Function(SpellVO) then) =
      _$SpellVOCopyWithImpl<$Res, SpellVO>;
  @useResult
  $Res call(
      {int id,
      String name,
      String slot,
      String preview,
      String icon,
      String description,
      @JsonKey(name: "description_html") String descriptionHtml,
      List<AttributeVO> attributes});
}

/// @nodoc
class _$SpellVOCopyWithImpl<$Res, $Val extends SpellVO>
    implements $SpellVOCopyWith<$Res> {
  _$SpellVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slot = null,
    Object? preview = null,
    Object? icon = null,
    Object? description = null,
    Object? descriptionHtml = null,
    Object? attributes = null,
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
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionHtml: null == descriptionHtml
          ? _value.descriptionHtml
          : descriptionHtml // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpellVOCopyWith<$Res> implements $SpellVOCopyWith<$Res> {
  factory _$$_SpellVOCopyWith(
          _$_SpellVO value, $Res Function(_$_SpellVO) then) =
      __$$_SpellVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String slot,
      String preview,
      String icon,
      String description,
      @JsonKey(name: "description_html") String descriptionHtml,
      List<AttributeVO> attributes});
}

/// @nodoc
class __$$_SpellVOCopyWithImpl<$Res>
    extends _$SpellVOCopyWithImpl<$Res, _$_SpellVO>
    implements _$$_SpellVOCopyWith<$Res> {
  __$$_SpellVOCopyWithImpl(_$_SpellVO _value, $Res Function(_$_SpellVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slot = null,
    Object? preview = null,
    Object? icon = null,
    Object? description = null,
    Object? descriptionHtml = null,
    Object? attributes = null,
  }) {
    return _then(_$_SpellVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionHtml: null == descriptionHtml
          ? _value.descriptionHtml
          : descriptionHtml // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpellVO implements _SpellVO {
  _$_SpellVO(
      {required this.id,
      this.name = "",
      this.slot = "",
      this.preview = "",
      this.icon = "",
      this.description = "",
      @JsonKey(name: "description_html") this.descriptionHtml = "",
      final List<AttributeVO> attributes = const []})
      : _attributes = attributes;

  factory _$_SpellVO.fromJson(Map<String, dynamic> json) =>
      _$$_SpellVOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String slot;
  @override
  @JsonKey()
  final String preview;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: "description_html")
  final String descriptionHtml;
  final List<AttributeVO> _attributes;
  @override
  @JsonKey()
  List<AttributeVO> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'SpellVO(id: $id, name: $name, slot: $slot, preview: $preview, icon: $icon, description: $description, descriptionHtml: $descriptionHtml, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpellVO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHtml, descriptionHtml) ||
                other.descriptionHtml == descriptionHtml) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slot,
      preview,
      icon,
      description,
      descriptionHtml,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpellVOCopyWith<_$_SpellVO> get copyWith =>
      __$$_SpellVOCopyWithImpl<_$_SpellVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpellVOToJson(
      this,
    );
  }
}

abstract class _SpellVO implements SpellVO {
  factory _SpellVO(
      {required final int id,
      final String name,
      final String slot,
      final String preview,
      final String icon,
      final String description,
      @JsonKey(name: "description_html") final String descriptionHtml,
      final List<AttributeVO> attributes}) = _$_SpellVO;

  factory _SpellVO.fromJson(Map<String, dynamic> json) = _$_SpellVO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slot;
  @override
  String get preview;
  @override
  String get icon;
  @override
  String get description;
  @override
  @JsonKey(name: "description_html")
  String get descriptionHtml;
  @override
  List<AttributeVO> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_SpellVOCopyWith<_$_SpellVO> get copyWith =>
      throw _privateConstructorUsedError;
}
