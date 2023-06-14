// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumable_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConsumableVO _$ConsumableVOFromJson(Map<String, dynamic> json) {
  return _ConsumableVO.fromJson(json);
}

/// @nodoc
mixin _$ConsumableVO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tier => throw _privateConstructorUsedError;
  @JsonKey(name: "item_power")
  int get itemPower => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsumableVOCopyWith<ConsumableVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumableVOCopyWith<$Res> {
  factory $ConsumableVOCopyWith(
          ConsumableVO value, $Res Function(ConsumableVO) then) =
      _$ConsumableVOCopyWithImpl<$Res, ConsumableVO>;
  @useResult
  $Res call(
      {int id,
      String name,
      String tier,
      @JsonKey(name: "item_power") int itemPower,
      String identifier,
      String icon,
      String info});
}

/// @nodoc
class _$ConsumableVOCopyWithImpl<$Res, $Val extends ConsumableVO>
    implements $ConsumableVOCopyWith<$Res> {
  _$ConsumableVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tier = null,
    Object? itemPower = null,
    Object? identifier = null,
    Object? icon = null,
    Object? info = null,
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
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      itemPower: null == itemPower
          ? _value.itemPower
          : itemPower // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConsumableVOCopyWith<$Res>
    implements $ConsumableVOCopyWith<$Res> {
  factory _$$_ConsumableVOCopyWith(
          _$_ConsumableVO value, $Res Function(_$_ConsumableVO) then) =
      __$$_ConsumableVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String tier,
      @JsonKey(name: "item_power") int itemPower,
      String identifier,
      String icon,
      String info});
}

/// @nodoc
class __$$_ConsumableVOCopyWithImpl<$Res>
    extends _$ConsumableVOCopyWithImpl<$Res, _$_ConsumableVO>
    implements _$$_ConsumableVOCopyWith<$Res> {
  __$$_ConsumableVOCopyWithImpl(
      _$_ConsumableVO _value, $Res Function(_$_ConsumableVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tier = null,
    Object? itemPower = null,
    Object? identifier = null,
    Object? icon = null,
    Object? info = null,
  }) {
    return _then(_$_ConsumableVO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      itemPower: null == itemPower
          ? _value.itemPower
          : itemPower // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConsumableVO implements _ConsumableVO {
  _$_ConsumableVO(
      {required this.id,
      this.name = "",
      this.tier = "",
      @JsonKey(name: "item_power") this.itemPower = 0,
      this.identifier = "",
      this.icon = "",
      this.info = ""});

  factory _$_ConsumableVO.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumableVOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String tier;
  @override
  @JsonKey(name: "item_power")
  final int itemPower;
  @override
  @JsonKey()
  final String identifier;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final String info;

  @override
  String toString() {
    return 'ConsumableVO(id: $id, name: $name, tier: $tier, itemPower: $itemPower, identifier: $identifier, icon: $icon, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumableVO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.itemPower, itemPower) ||
                other.itemPower == itemPower) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, tier, itemPower, identifier, icon, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConsumableVOCopyWith<_$_ConsumableVO> get copyWith =>
      __$$_ConsumableVOCopyWithImpl<_$_ConsumableVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConsumableVOToJson(
      this,
    );
  }
}

abstract class _ConsumableVO implements ConsumableVO {
  factory _ConsumableVO(
      {required final int id,
      final String name,
      final String tier,
      @JsonKey(name: "item_power") final int itemPower,
      final String identifier,
      final String icon,
      final String info}) = _$_ConsumableVO;

  factory _ConsumableVO.fromJson(Map<String, dynamic> json) =
      _$_ConsumableVO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tier;
  @override
  @JsonKey(name: "item_power")
  int get itemPower;
  @override
  String get identifier;
  @override
  String get icon;
  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$_ConsumableVOCopyWith<_$_ConsumableVO> get copyWith =>
      throw _privateConstructorUsedError;
}
