import 'package:freezed_annotation/freezed_annotation.dart';

part 'crafting_requirement_vo.freezed.dart';
part 'crafting_requirement_vo.g.dart';

@Freezed()
class CraftingRequirementVO with _$CraftingRequirementVO {
  factory CraftingRequirementVO({
    @Default("") String icon,
    @Default("") String name,
    @Default(0) int value,
    @Default("") String identifier,
  }) = _CraftingRequirementVO;

  factory CraftingRequirementVO.fromJson(Map<String, dynamic> json) =>
      _$CraftingRequirementVOFromJson(json);
}
