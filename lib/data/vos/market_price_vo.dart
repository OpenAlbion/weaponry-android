import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_price_vo.freezed.dart';
part 'market_price_vo.g.dart';

@Freezed()
class MarketPriceVO with _$MarketPriceVO {
  factory MarketPriceVO({
    @Default("") @JsonKey(name: "item_id") String itemId,
    @Default("") @JsonKey(name: "city") String city,
    @Default("") @JsonKey(name: "sell_price_min_date") String sellPriceMinDate,
    @JsonKey(name: "quality") required int quality,
    @JsonKey(name: "sell_price_min") required int sellPriceMin,
  }) = _MarketPriceVO;

  factory MarketPriceVO.fromJson(Map<String, dynamic> json) => _$MarketPriceVOFromJson(json);
}
