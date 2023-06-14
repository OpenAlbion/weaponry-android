// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crafting_requirement_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CraftingRequirementVO _$$_CraftingRequirementVOFromJson(
        Map<String, dynamic> json) =>
    _$_CraftingRequirementVO(
      icon: json['icon'] as String? ?? "",
      name: json['name'] as String? ?? "",
      value: json['value'] as int? ?? 0,
      identifier: json['identifier'] as String? ?? "",
    );

Map<String, dynamic> _$$_CraftingRequirementVOToJson(
        _$_CraftingRequirementVO instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'value': instance.value,
      'identifier': instance.identifier,
    };
