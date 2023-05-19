import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:openalbion_weaponry/network/response/response_category_list.dart';
import 'package:openalbion_weaponry/network/response/response_enchantment_list.dart';
import 'package:openalbion_weaponry/network/response/response_item_list.dart';
import 'package:openalbion_weaponry/network/response/response_slot_list.dart';
import 'package:retrofit/http.dart';
part 'open_albion_api.g.dart';

@RestApi(baseUrl: ApiConstants.OPEN_ALBION_URL)
abstract class OpenAlbionApi {
  factory OpenAlbionApi(Dio dio, {String baseUrl}) = _OpenAlbionApi;

  @GET("/categories?api_token={apiToken}")
  Future<ResponseCategoryList> getCategoryList({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String apiToken,
  });

  @GET("/{path}?subcategory_id={subId}&api_token={apiToken}")
  Future<ResponseItemList> getItemListBySubCategoryId({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String apiToken,
    @Path() required String path,
    @Path() required int subId,
  });

  @GET("/weapon-stats/{itemType}/{itemId}?api_token={apiToken}")
  Future<ResponseEnchantmentList> getItemDetailById({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String apiToken,
    @Path() required String itemType,
    @Path() required int itemId,
  });

  @GET("/spells/{itemType}/{itemId}?api_token={apiToken}")
  Future<ResponseSlotList> getSpellDetailById({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String apiToken,
    @Path() required String itemType,
    @Path() required int itemId,
  });
}
