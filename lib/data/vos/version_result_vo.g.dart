// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_result_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionResultVO _$$_VersionResultVOFromJson(Map<String, dynamic> json) =>
    _$_VersionResultVO(
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      version: json['version'] as String? ?? "",
      force: json['force'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VersionResultVOToJson(_$_VersionResultVO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'version': instance.version,
      'force': instance.force,
    };
