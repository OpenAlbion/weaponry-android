import 'package:freezed_annotation/freezed_annotation.dart';

part 'consumable_vo.freezed.dart';
part 'consumable_vo.g.dart';

@Freezed()
class ConsumableVO with _$ConsumableVO {
  factory ConsumableVO({
    required int id,
    @Default("") String name,
    @Default("") String tier,
    @Default(0) @JsonKey(name: "item_power") int itemPower,
    @Default("") String identifier,
    @Default("") String icon,
    @Default("") String info,
  }) = _ConsumableVO;

  factory ConsumableVO.fromJson(Map<String, dynamic> json) => _$ConsumableVOFromJson(json);
}
