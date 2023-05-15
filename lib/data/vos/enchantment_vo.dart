import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/quality_vo.dart';

part 'enchantment_vo.freezed.dart';
part 'enchantment_vo.g.dart';

@Freezed()
class EnchantmentVO with _$EnchantmentVO{
  factory EnchantmentVO({
    required int enchantment,
    @Default("")  String icon,
    required List<QualityVO> stats,
  }) = _EnchantmentVO;

  factory EnchantmentVO.fromJson(Map<String, dynamic> json) => _$EnchantmentVOFromJson(json);
}