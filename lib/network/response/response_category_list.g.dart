// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseCategoryList _$$_ResponseCategoryListFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseCategoryList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResponseCategoryListToJson(
        _$_ResponseCategoryList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
