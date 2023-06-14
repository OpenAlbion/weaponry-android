import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/crafting_item_vo.dart';
import 'package:openalbion_weaponry/data/vos/crafting_requirement_vo.dart';

part 'crafting_enchantment_vo.freezed.dart';
part 'crafting_enchantment_vo.g.dart';

@Freezed()
class CraftingEnchantmentVO with _$CraftingEnchantmentVO{
  factory CraftingEnchantmentVO({
    @Default(0)  int enchantment,
    @Default("") String icon,
    required CraftingItemVO crafting,
  }) = _CraftingEnchantmentVO;

  factory CraftingEnchantmentVO.fromJson(Map<String, dynamic> json) => _$CraftingEnchantmentVOFromJson(json);
}