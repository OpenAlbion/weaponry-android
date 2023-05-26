// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportVO _$ReportVOFromJson(Map<String, dynamic> json) {
  return _ReportVO.fromJson(json);
}

/// @nodoc
mixin _$ReportVO {
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DebugVO get debug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportVOCopyWith<ReportVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportVOCopyWith<$Res> {
  factory $ReportVOCopyWith(ReportVO value, $Res Function(ReportVO) then) =
      _$ReportVOCopyWithImpl<$Res, ReportVO>;
  @useResult
  $Res call({String category, String description, DebugVO debug});

  $DebugVOCopyWith<$Res> get debug;
}

/// @nodoc
class _$ReportVOCopyWithImpl<$Res, $Val extends ReportVO>
    implements $ReportVOCopyWith<$Res> {
  _$ReportVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? description = null,
    Object? debug = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      debug: null == debug
          ? _value.debug
          : debug // ignore: cast_nullable_to_non_nullable
              as DebugVO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DebugVOCopyWith<$Res> get debug {
    return $DebugVOCopyWith<$Res>(_value.debug, (value) {
      return _then(_value.copyWith(debug: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReportVOCopyWith<$Res> implements $ReportVOCopyWith<$Res> {
  factory _$$_ReportVOCopyWith(
          _$_ReportVO value, $Res Function(_$_ReportVO) then) =
      __$$_ReportVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, String description, DebugVO debug});

  @override
  $DebugVOCopyWith<$Res> get debug;
}

/// @nodoc
class __$$_ReportVOCopyWithImpl<$Res>
    extends _$ReportVOCopyWithImpl<$Res, _$_ReportVO>
    implements _$$_ReportVOCopyWith<$Res> {
  __$$_ReportVOCopyWithImpl(
      _$_ReportVO _value, $Res Function(_$_ReportVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? description = null,
    Object? debug = null,
  }) {
    return _then(_$_ReportVO(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      debug: null == debug
          ? _value.debug
          : debug // ignore: cast_nullable_to_non_nullable
              as DebugVO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportVO implements _ReportVO {
  _$_ReportVO({this.category = "", this.description = "", required this.debug});

  factory _$_ReportVO.fromJson(Map<String, dynamic> json) =>
      _$$_ReportVOFromJson(json);

  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String description;
  @override
  final DebugVO debug;

  @override
  String toString() {
    return 'ReportVO(category: $category, description: $description, debug: $debug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportVO &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.debug, debug) || other.debug == debug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, description, debug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportVOCopyWith<_$_ReportVO> get copyWith =>
      __$$_ReportVOCopyWithImpl<_$_ReportVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportVOToJson(
      this,
    );
  }
}

abstract class _ReportVO implements ReportVO {
  factory _ReportVO(
      {final String category,
      final String description,
      required final DebugVO debug}) = _$_ReportVO;

  factory _ReportVO.fromJson(Map<String, dynamic> json) = _$_ReportVO.fromJson;

  @override
  String get category;
  @override
  String get description;
  @override
  DebugVO get debug;
  @override
  @JsonKey(ignore: true)
  _$$_ReportVOCopyWith<_$_ReportVO> get copyWith =>
      throw _privateConstructorUsedError;
}
