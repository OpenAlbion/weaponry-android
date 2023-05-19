// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryVO _$$_CategoryVOFromJson(Map<String, dynamic> json) =>
    _$_CategoryVO(
      id: json['id'] as int,
      path: json['path'] as String? ?? "armors",
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => SubCategoryVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoryVOToJson(_$_CategoryVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'type': instance.type,
      'subcategories': instance.subcategories,
    };
