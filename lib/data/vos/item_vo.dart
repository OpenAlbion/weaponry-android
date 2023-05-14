import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/tier_group_vo.dart';

part 'item_vo.freezed.dart';
part 'item_vo.g.dart';

@Freezed()
class ItemVO with _$ItemVO {
  factory ItemVO({
    required int id,
    @Default("") String name,
    @JsonKey(name: "tire") @Default("") String tier,
    @JsonKey(name: "item_power") required int itemPower,
    @Default("") String icon,
  }) = _ItemVO;

  factory ItemVO.fromJson(Map<String, dynamic> json) => _$ItemVOFromJson(json);
}

extension ItemVOListExtension on List<ItemVO> {
  List<TierGroupVO> convertToTierGroupList() {
    var tierSet = map((item) => item.tier).toList().toSet();
    List<TierGroupVO> tierGroupList = [];
    tierSet.forEach((tier) {
      tierGroupList.add(TierGroupVO(
        name: convertTierToReadableName(tier),
        tier: tier,
        itemList: where((item) => item.tier == tier).toList()));
    });
    print(tierSet);
    print(tierGroupList);
    return tierGroupList;
  }
}

String convertTierToReadableName(String tier){
  switch(tier){
    case "1.0":
    return "Beginner's Tier";

        case "2.0":
    return "Novice's Tier";

        case "3.0":
    return "Journeyman's Tier";

        case "4.0":
    return "Adept's Tier";

        case "5.0":
    return "Expert's Tier";

        case "6.0":
    return "Master's Tier";

        case "7.0":
    return "Grandmaster's Tier";

        case "8.0":
    return "Elder's Tier";

    default:
    return "Unkown Tier";
  }
}
