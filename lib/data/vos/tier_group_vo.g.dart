// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_group_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TierGroupVO _$$_TierGroupVOFromJson(Map<String, dynamic> json) =>
    _$_TierGroupVO(
      name: json['name'] as String? ?? "",
      tier: json['tier'] ?? "",
      itemList: (json['itemList'] as List<dynamic>)
          .map((e) => ItemVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TierGroupVOToJson(_$_TierGroupVO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tier': instance.tier,
      'itemList': instance.itemList,
    };
