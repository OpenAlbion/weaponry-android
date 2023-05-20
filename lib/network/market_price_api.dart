import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'market_price_api.g.dart';

@RestApi(baseUrl: ApiConstants.ALBION_EAST_URL)
abstract class MarketPriceApi {
  factory MarketPriceApi(Dio dio, {String baseUrl}) = _MarketPriceApi;

  @GET(
      "/api/v2/stats/prices/{itemId}.json?locations=Caerleon,Bridgewatch,Lymhurst,Thetford,Martlock,Fort Sterling&qualities={quality}")
  Future<List<MarketPriceVO>> getMarketPrice({
    @Path() required String itemId,
    @Path() required int quality,
  });
}
