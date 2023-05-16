// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_slot_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseSlotList _$$_ResponseSlotListFromJson(Map<String, dynamic> json) =>
    _$_ResponseSlotList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SlotVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResponseSlotListToJson(_$_ResponseSlotList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
