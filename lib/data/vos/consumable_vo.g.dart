// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumable_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConsumableVO _$$_ConsumableVOFromJson(Map<String, dynamic> json) =>
    _$_ConsumableVO(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      tier: json['tier'] as String? ?? "",
      itemPower: json['item_power'] as int? ?? 0,
      identifier: json['identifier'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      info: json['info'] as String? ?? "",
    );

Map<String, dynamic> _$$_ConsumableVOToJson(_$_ConsumableVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tier': instance.tier,
      'item_power': instance.itemPower,
      'identifier': instance.identifier,
      'icon': instance.icon,
      'info': instance.info,
    };
