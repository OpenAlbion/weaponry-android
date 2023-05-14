// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemVO _$$_ItemVOFromJson(Map<String, dynamic> json) => _$_ItemVO(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      tier: json['tire'] as String? ?? "",
      itemPower: json['item_power'] as int,
      icon: json['icon'] as String? ?? "",
    );

Map<String, dynamic> _$$_ItemVOToJson(_$_ItemVO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tire': instance.tier,
      'item_power': instance.itemPower,
      'icon': instance.icon,
    };
