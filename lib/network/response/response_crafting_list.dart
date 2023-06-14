import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/crafting_enchantment_vo.dart';

part 'response_crafting_list.freezed.dart';
part 'response_crafting_list.g.dart';

@Freezed()
class ResponseCraftingList with _$ResponseCraftingList{
  factory ResponseCraftingList({
    required List<CraftingEnchantmentVO> data,
  }) = _ResponseCraftingList;

  factory ResponseCraftingList.fromJson(Map<String, dynamic> json) => _$ResponseCraftingListFromJson(json);
}