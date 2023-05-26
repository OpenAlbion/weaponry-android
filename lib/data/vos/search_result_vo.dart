// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/persistent/hive_constants.dart';
import 'package:hive/hive.dart';

part 'search_result_vo.freezed.dart';
part 'search_result_vo.g.dart';

@HiveType(typeId: HiveConstants.HIVE_TYPE_SEARCH_RESULT_VO, adapterName: 'SeachResultVOAdapter')
@Freezed()
class SearchResultVO with _$SearchResultVO {
  factory SearchResultVO({
    @HiveField(0) @Default("") String type,
    @HiveField(1) @Default("") String name,
    @HiveField(2) @Default("") String tier,
    @HiveField(3) @Default("") String identifier,
    @HiveField(4) @Default("") String icon,
    @HiveField(5) @JsonKey(name: "item_power") int? itemPower,
    @HiveField(6) @JsonKey(name: "type_id") int? typeId,
    @HiveField(7) @Default(0) int createdAt,
  }) = _SearchResultVO;

  factory SearchResultVO.fromJson(Map<String, dynamic> json) => _$SearchResultVOFromJson(json);
}

extension SearchResultVOExtenstion on SearchResultVO {
  ItemVO convertToItemVO() {
    return ItemVO(
        id: typeId ?? 2,
        name: name,
        tier: tier,
        identifier: identifier,
        itemPower: itemPower,
        icon: icon);
  }
}
