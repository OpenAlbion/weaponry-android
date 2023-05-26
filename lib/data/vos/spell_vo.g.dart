// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpellVO _$$_SpellVOFromJson(Map<String, dynamic> json) => _$_SpellVO(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      slot: json['slot'] as String? ?? "",
      preview: json['preview'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      description: json['description'] as String? ?? "",
      descriptionHtml: json['description_html'] as String? ?? "",
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) => AttributeVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SpellVOToJson(_$_SpellVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slot': instance.slot,
      'preview': instance.preview,
      'icon': instance.icon,
      'description': instance.description,
      'description_html': instance.descriptionHtml,
      'attributes': instance.attributes,
    };
