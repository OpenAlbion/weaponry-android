import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';

part 'tier_group_vo.freezed.dart';
part 'tier_group_vo.g.dart';

@Freezed()
class TierGroupVO with _$TierGroupVO{
  factory TierGroupVO({
    @Default("")  String name,
    @Default("")  tier,
    required List<ItemVO> itemList
  }) = _TierGroupVO;

  factory TierGroupVO.fromJson(Map<String, dynamic> json) => _$TierGroupVOFromJson(json);
}