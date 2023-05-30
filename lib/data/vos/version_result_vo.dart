import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_result_vo.freezed.dart';
part 'version_result_vo.g.dart';

@Freezed()
class VersionResultVO with _$VersionResultVO {
  factory VersionResultVO({
    @Default("") String title,
    @Default("") String description,
    @Default("") String version,
    @Default(false) bool force,
  }) = _VersionResultVO;

  factory VersionResultVO.fromJson(Map<String, dynamic> json) => _$VersionResultVOFromJson(json);
}
