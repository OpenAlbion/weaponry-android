// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_enchantment_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseEnchantmentList _$$_ResponseEnchantmentListFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseEnchantmentList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EnchantmentVO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResponseEnchantmentListToJson(
        _$_ResponseEnchantmentList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
