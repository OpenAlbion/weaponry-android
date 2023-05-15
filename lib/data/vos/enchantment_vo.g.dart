// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enchantment_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EnchantmentVO _$$_EnchantmentVOFromJson(Map<String, dynamic> json) =>
    _$_EnchantmentVO(
      enchantment: json['enchantment'] as int,
      icon: json['icon'] as String? ?? "",
      stats: (json['stats'] as List<dynamic>)
          .map((e) => QualityVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EnchantmentVOToJson(_$_EnchantmentVO instance) =>
    <String, dynamic>{
      'enchantment': instance.enchantment,
      'icon': instance.icon,
      'stats': instance.stats,
    };
