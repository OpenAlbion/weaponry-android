import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'market_price_api.g.dart';

@RestApi(baseUrl: ApiConstants.OPEN_ALBION_URL)
abstract class MarketPriceApi {
  factory MarketPriceApi(Dio dio, {String baseUrl}) = _MarketPriceApi;

  @GET("/aod/{region}/item/{itemId}/price?locations={locations}&qualities={quality}")
  Future<List<MarketPriceVO>> getMarketPrice({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() required String locations,
    @Path() required String region,
    @Path() required String itemId,
    @Path() required int quality,
  });
}
