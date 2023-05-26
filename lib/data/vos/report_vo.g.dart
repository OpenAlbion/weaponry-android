// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportVO _$$_ReportVOFromJson(Map<String, dynamic> json) => _$_ReportVO(
      category: json['category'] as String? ?? "",
      description: json['description'] as String? ?? "",
      debug: DebugVO.fromJson(json['debug'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReportVOToJson(_$_ReportVO instance) =>
    <String, dynamic>{
      'category': instance.category,
      'description': instance.description,
      'debug': instance.debug,
    };
