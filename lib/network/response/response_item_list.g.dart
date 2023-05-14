// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_item_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseItemList _$$_ResponseItemListFromJson(Map<String, dynamic> json) =>
    _$_ResponseItemList(
      data: (json['data'] as List<dynamic>)
          .map((e) => ItemVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseItemListToJson(_$_ResponseItemList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
