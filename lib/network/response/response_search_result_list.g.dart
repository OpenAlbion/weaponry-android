// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_search_result_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseSearchResultList _$$_ResponseSearchResultListFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseSearchResultList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SearchResultVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResponseSearchResultListToJson(
        _$_ResponseSearchResultList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
