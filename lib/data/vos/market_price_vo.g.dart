// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_price_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketPriceVO _$$_MarketPriceVOFromJson(Map<String, dynamic> json) =>
    _$_MarketPriceVO(
      itemId: json['item_id'] as String? ?? "",
      city: json['city'] as String? ?? "",
      sellPriceMinDate: json['sell_price_min_date'] as String? ?? "",
      quality: json['quality'] as int,
      sellPriceMin: json['sell_price_min'] as int,
    );

Map<String, dynamic> _$$_MarketPriceVOToJson(_$_MarketPriceVO instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'city': instance.city,
      'sell_price_min_date': instance.sellPriceMinDate,
      'quality': instance.quality,
      'sell_price_min': instance.sellPriceMin,
    };
