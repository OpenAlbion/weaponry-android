import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'market_price_api.g.dart';

@RestApi(baseUrl: ApiConstants.OPEN_ALBION_URL)
abstract class MarketPriceApi {
  factory MarketPriceApi(Dio dio, {String baseUrl}) = _MarketPriceApi;

  @GET(
      "/aod/{region}/item/{itemId}/price?locations=Caerleon,Bridgewatch,Lymhurst,Thetford,Martlock,Fort Sterling&qualities={quality}")
  Future<List<MarketPriceVO>> getMarketPrice({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String region,
    @Path() required String itemId,
    @Path() required int quality,
  });
}
