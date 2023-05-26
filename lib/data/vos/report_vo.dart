import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/debug_vo.dart';

part 'report_vo.freezed.dart';
part 'report_vo.g.dart';

@Freezed()
class ReportVO with _$ReportVO{
  factory ReportVO({
    @Default("")  String category,
    @Default("")  String description,
     required DebugVO debug,
  }) = _ReportVO;

  factory ReportVO.fromJson(Map<String, dynamic> json) => _$ReportVOFromJson(json);
}