// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_crafting_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseCraftingList _$$_ResponseCraftingListFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseCraftingList(
      data: (json['data'] as List<dynamic>)
          .map((e) => CraftingEnchantmentVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseCraftingListToJson(
        _$_ResponseCraftingList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
