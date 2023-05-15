import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/stat_vo.dart';

part 'quality_vo.freezed.dart';
part 'quality_vo.g.dart';

@Freezed()
class QualityVO with _$QualityVO{
  factory QualityVO({
    required int id,
    @Default("")  String quality,
    required int enchantment,
    required List<StatVO> stats,
  }) = _QualityVO;

  factory QualityVO.fromJson(Map<String, dynamic> json) => _$QualityVOFromJson(json);
}