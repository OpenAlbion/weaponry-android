import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';
part 'app_error.g.dart';

@Freezed()
class AppError with _$AppError{
  factory AppError({
    @Default("")  String code,
    @Default("")  String message
  }) = _AppError;

  factory AppError.fromJson(Map<String, dynamic> json) => _$AppErrorFromJson(json);
}