// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QualityVO _$$_QualityVOFromJson(Map<String, dynamic> json) => _$_QualityVO(
      id: json['id'] as int,
      quality: json['quality'] as String? ?? "",
      enchantment: json['enchantment'] as int,
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QualityVOToJson(_$_QualityVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quality': instance.quality,
      'enchantment': instance.enchantment,
      'stats': instance.stats,
    };
