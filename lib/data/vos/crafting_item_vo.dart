import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/consumable_vo.dart';
import 'package:openalbion_weaponry/data/vos/crafting_requirement_vo.dart';

part 'crafting_item_vo.freezed.dart';
part 'crafting_item_vo.g.dart';

@Freezed()
class CraftingItemVO with _$CraftingItemVO{
  factory CraftingItemVO({
    required int id,
    @Default(0) @JsonKey(name: "per_craft") perCraft,
    required int enchantment,
    required ConsumableVO consumable,
    @Default([]) List<CraftingRequirementVO> requirements,
  }) = _CraftingItemVO;

  factory CraftingItemVO.fromJson(Map<String, dynamic> json) => _$CraftingItemVOFromJson(json);
}