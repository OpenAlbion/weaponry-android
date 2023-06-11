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

extension QualityNameMapperExtension on int {
  String mapItemQualityName() {
    switch (this) {
      case 1:
        return "Normal";

      case 2:
        return "Good";

      case 3:
        return "Outstanding";

      case 4:
        return "Excellent";

      case 5:
        return "Masterpiece";

      default:
        return "Unknown";
    }
  }
}

extension MarketPriceListExtension on List<MarketPriceVO> {
  bool isMarketAvailable() {
    return isNotEmpty && where((element) => element.sellPriceMin == 0).toList().length != length;
  }
}
