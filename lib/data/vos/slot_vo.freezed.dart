// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlotVO _$SlotVOFromJson(Map<String, dynamic> json) {
  return _SlotVO.fromJson(json);
}

/// @nodoc
mixin _$SlotVO {
  String get slot => throw _privateConstructorUsedError;
  List<SpellVO> get spells => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotVOCopyWith<SlotVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotVOCopyWith<$Res> {
  factory $SlotVOCopyWith(SlotVO value, $Res Function(SlotVO) then) =
      _$SlotVOCopyWithImpl<$Res, SlotVO>;
  @useResult
  $Res call({String slot, List<SpellVO> spells});
}

/// @nodoc
class _$SlotVOCopyWithImpl<$Res, $Val extends SlotVO>
    implements $SlotVOCopyWith<$Res> {
  _$SlotVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? spells = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      spells: null == spells
          ? _value.spells
          : spells // ignore: cast_nullable_to_non_nullable
              as List<SpellVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlotVOCopyWith<$Res> implements $SlotVOCopyWith<$Res> {
  factory _$$_SlotVOCopyWith(_$_SlotVO value, $Res Function(_$_SlotVO) then) =
      __$$_SlotVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slot, List<SpellVO> spells});
}

/// @nodoc
class __$$_SlotVOCopyWithImpl<$Res>
    extends _$SlotVOCopyWithImpl<$Res, _$_SlotVO>
    implements _$$_SlotVOCopyWith<$Res> {
  __$$_SlotVOCopyWithImpl(_$_SlotVO _value, $Res Function(_$_SlotVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? spells = null,
  }) {
    return _then(_$_SlotVO(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      spells: null == spells
          ? _value._spells
          : spells // ignore: cast_nullable_to_non_nullable
              as List<SpellVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlotVO implements _SlotVO {
  _$_SlotVO({this.slot = "", final List<SpellVO> spells = const []})
      : _spells = spells;

  factory _$_SlotVO.fromJson(Map<String, dynamic> json) =>
      _$$_SlotVOFromJson(json);

  @override
  @JsonKey()
  final String slot;
  final List<SpellVO> _spells;
  @override
  @JsonKey()
  List<SpellVO> get spells {
    if (_spells is EqualUnmodifiableListView) return _spells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spells);
  }

  @override
  String toString() {
    return 'SlotVO(slot: $slot, spells: $spells)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlotVO &&
            (identical(other.slot, slot) || other.slot == slot) &&
            const DeepCollectionEquality().equals(other._spells, _spells));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, slot, const DeepCollectionEquality().hash(_spells));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlotVOCopyWith<_$_SlotVO> get copyWith =>
      __$$_SlotVOCopyWithImpl<_$_SlotVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotVOToJson(
      this,
    );
  }
}

abstract class _SlotVO implements SlotVO {
  factory _SlotVO({final String slot, final List<SpellVO> spells}) = _$_SlotVO;

  factory _SlotVO.fromJson(Map<String, dynamic> json) = _$_SlotVO.fromJson;

  @override
  String get slot;
  @override
  List<SpellVO> get spells;
  @override
  @JsonKey(ignore: true)
  _$$_SlotVOCopyWith<_$_SlotVO> get copyWith =>
      throw _privateConstructorUsedError;
}
