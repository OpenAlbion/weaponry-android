import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_vo.freezed.dart';
part 'report_vo.g.dart';

@Freezed()
class ReportVO with _$ReportVO{
  factory ReportVO({
    @Default("")  String title,
    @Default("")  String detail,
  }) = _ReportVO;

  factory ReportVO.fromJson(Map<String, dynamic> json) => _$ReportVOFromJson(json);
}