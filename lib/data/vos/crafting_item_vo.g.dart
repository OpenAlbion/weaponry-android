// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crafting_item_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CraftingItemVO _$$_CraftingItemVOFromJson(Map<String, dynamic> json) =>
    _$_CraftingItemVO(
      id: json['id'] as int,
      perCraft: json['per_craft'] ?? 0,
      enchantment: json['enchantment'] as int,
      consumable:
          ConsumableVO.fromJson(json['consumable'] as Map<String, dynamic>),
      requirements: (json['requirements'] as List<dynamic>?)
              ?.map((e) =>
                  CraftingRequirementVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CraftingItemVOToJson(_$_CraftingItemVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'per_craft': instance.perCraft,
      'enchantment': instance.enchantment,
      'consumable': instance.consumable,
      'requirements': instance.requirements,
    };
