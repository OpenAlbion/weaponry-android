// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crafting_enchantment_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CraftingEnchantmentVO _$$_CraftingEnchantmentVOFromJson(
        Map<String, dynamic> json) =>
    _$_CraftingEnchantmentVO(
      enchantment: json['enchantment'] as int? ?? 0,
      icon: json['icon'] as String? ?? "",
      crafting:
          CraftingItemVO.fromJson(json['crafting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CraftingEnchantmentVOToJson(
        _$_CraftingEnchantmentVO instance) =>
    <String, dynamic>{
      'enchantment': instance.enchantment,
      'icon': instance.icon,
      'crafting': instance.crafting,
    };
