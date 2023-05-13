
import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:retrofit/http.dart';
part 'open_albion_api.g.dart';

@RestApi(baseUrl: ApiConstants.ALBION_EAST_URL)
abstract class OpenAlbionApi {
  factory OpenAlbionApi(Dio dio, {String baseUrl}) = _OpenAlbionApi;

  // @GET("/gameinfo/items/{itemId}/data")
  // Future<ItemDetailVO> getItemDetail(
  //   @Path() String itemId
  // );
}
