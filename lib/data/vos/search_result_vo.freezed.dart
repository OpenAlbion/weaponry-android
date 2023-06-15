// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultVO _$SearchResultVOFromJson(Map<String, dynamic> json) {
  return _SearchResultVO.fromJson(json);
}

/// @nodoc
mixin _$SearchResultVO {
  @HiveField(0)
  String get type => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get tier => throw _privateConstructorUsedError;
  @HiveField(3)
  String get identifier => throw _privateConstructorUsedError;
  @HiveField(4)
  String get icon => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "item_power")
  int? get itemPower => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "type_id")
  int? get typeId => throw _privateConstructorUsedError;
  @HiveField(7)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: "")
  String get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultVOCopyWith<SearchResultVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultVOCopyWith<$Res> {
  factory $SearchResultVOCopyWith(
          SearchResultVO value, $Res Function(SearchResultVO) then) =
      _$SearchResultVOCopyWithImpl<$Res, SearchResultVO>;
  @useResult
  $Res call(
      {@HiveField(0) String type,
      @HiveField(1) String name,
      @HiveField(2) String tier,
      @HiveField(3) String identifier,
      @HiveField(4) String icon,
      @HiveField(5) @JsonKey(name: "item_power") int? itemPower,
      @HiveField(6) @JsonKey(name: "type_id") int? typeId,
      @HiveField(7) int createdAt,
      @HiveField(8, defaultValue: "") String info});
}

/// @nodoc
class _$SearchResultVOCopyWithImpl<$Res, $Val extends SearchResultVO>
    implements $SearchResultVOCopyWith<$Res> {
  _$SearchResultVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? tier = null,
    Object? identifier = null,
    Object? icon = null,
    Object? itemPower = freezed,
    Object? typeId = freezed,
    Object? createdAt = null,
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      itemPower: freezed == itemPower
          ? _value.itemPower
          : itemPower // ignore: cast_nullable_to_non_nullable
              as int?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultVOCopyWith<$Res>
    implements $SearchResultVOCopyWith<$Res> {
  factory _$$_SearchResultVOCopyWith(
          _$_SearchResultVO value, $Res Function(_$_SearchResultVO) then) =
      __$$_SearchResultVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String type,
      @HiveField(1) String name,
      @HiveField(2) String tier,
      @HiveField(3) String identifier,
      @HiveField(4) String icon,
      @HiveField(5) @JsonKey(name: "item_power") int? itemPower,
      @HiveField(6) @JsonKey(name: "type_id") int? typeId,
      @HiveField(7) int createdAt,
      @HiveField(8, defaultValue: "") String info});
}

/// @nodoc
class __$$_SearchResultVOCopyWithImpl<$Res>
    extends _$SearchResultVOCopyWithImpl<$Res, _$_SearchResultVO>
    implements _$$_SearchResultVOCopyWith<$Res> {
  __$$_SearchResultVOCopyWithImpl(
      _$_SearchResultVO _value, $Res Function(_$_SearchResultVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? tier = null,
    Object? identifier = null,
    Object? icon = null,
    Object? itemPower = freezed,
    Object? typeId = freezed,
    Object? createdAt = null,
    Object? info = null,
  }) {
    return _then(_$_SearchResultVO(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      itemPower: freezed == itemPower
          ? _value.itemPower
          : itemPower // ignore: cast_nullable_to_non_nullable
              as int?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultVO implements _SearchResultVO {
  _$_SearchResultVO(
      {@HiveField(0) this.type = "",
      @HiveField(1) this.name = "",
      @HiveField(2) this.tier = "",
      @HiveField(3) this.identifier = "",
      @HiveField(4) this.icon = "",
      @HiveField(5) @JsonKey(name: "item_power") this.itemPower,
      @HiveField(6) @JsonKey(name: "type_id") this.typeId,
      @HiveField(7) this.createdAt = 0,
      @HiveField(8, defaultValue: "") this.info = ""});

  factory _$_SearchResultVO.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultVOFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String type;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String tier;
  @override
  @JsonKey()
  @HiveField(3)
  final String identifier;
  @override
  @JsonKey()
  @HiveField(4)
  final String icon;
  @override
  @HiveField(5)
  @JsonKey(name: "item_power")
  final int? itemPower;
  @override
  @HiveField(6)
  @JsonKey(name: "type_id")
  final int? typeId;
  @override
  @JsonKey()
  @HiveField(7)
  final int createdAt;
  @override
  @JsonKey()
  @HiveField(8, defaultValue: "")
  final String info;

  @override
  String toString() {
    return 'SearchResultVO(type: $type, name: $name, tier: $tier, identifier: $identifier, icon: $icon, itemPower: $itemPower, typeId: $typeId, createdAt: $createdAt, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultVO &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.itemPower, itemPower) ||
                other.itemPower == itemPower) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, tier, identifier,
      icon, itemPower, typeId, createdAt, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultVOCopyWith<_$_SearchResultVO> get copyWith =>
      __$$_SearchResultVOCopyWithImpl<_$_SearchResultVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultVOToJson(
      this,
    );
  }
}

abstract class _SearchResultVO implements SearchResultVO {
  factory _SearchResultVO(
      {@HiveField(0) final String type,
      @HiveField(1) final String name,
      @HiveField(2) final String tier,
      @HiveField(3) final String identifier,
      @HiveField(4) final String icon,
      @HiveField(5) @JsonKey(name: "item_power") final int? itemPower,
      @HiveField(6) @JsonKey(name: "type_id") final int? typeId,
      @HiveField(7) final int createdAt,
      @HiveField(8, defaultValue: "") final String info}) = _$_SearchResultVO;

  factory _SearchResultVO.fromJson(Map<String, dynamic> json) =
      _$_SearchResultVO.fromJson;

  @override
  @HiveField(0)
  String get type;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get tier;
  @override
  @HiveField(3)
  String get identifier;
  @override
  @HiveField(4)
  String get icon;
  @override
  @HiveField(5)
  @JsonKey(name: "item_power")
  int? get itemPower;
  @override
  @HiveField(6)
  @JsonKey(name: "type_id")
  int? get typeId;
  @override
  @HiveField(7)
  int get createdAt;
  @override
  @HiveField(8, defaultValue: "")
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultVOCopyWith<_$_SearchResultVO> get copyWith =>
      throw _privateConstructorUsedError;
}
