// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlotVO _$$_SlotVOFromJson(Map<String, dynamic> json) => _$_SlotVO(
      slot: json['slot'] as String? ?? "",
      spells: (json['spells'] as List<dynamic>?)
              ?.map((e) => SpellVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SlotVOToJson(_$_SlotVO instance) => <String, dynamic>{
      'slot': instance.slot,
      'spells': instance.spells,
    };
