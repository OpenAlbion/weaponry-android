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
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;

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
  $Res call({String title, String detail});
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
    Object? title = null,
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportVOCopyWith<$Res> implements $ReportVOCopyWith<$Res> {
  factory _$$_ReportVOCopyWith(
          _$_ReportVO value, $Res Function(_$_ReportVO) then) =
      __$$_ReportVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String detail});
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
    Object? title = null,
    Object? detail = null,
  }) {
    return _then(_$_ReportVO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportVO implements _ReportVO {
  _$_ReportVO({this.title = "", this.detail = ""});

  factory _$_ReportVO.fromJson(Map<String, dynamic> json) =>
      _$$_ReportVOFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String detail;

  @override
  String toString() {
    return 'ReportVO(title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportVO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, detail);

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
  factory _ReportVO({final String title, final String detail}) = _$_ReportVO;

  factory _ReportVO.fromJson(Map<String, dynamic> json) = _$_ReportVO.fromJson;

  @override
  String get title;
  @override
  String get detail;
  @override
  @JsonKey(ignore: true)
  _$$_ReportVOCopyWith<_$_ReportVO> get copyWith =>
      throw _privateConstructorUsedError;
}
