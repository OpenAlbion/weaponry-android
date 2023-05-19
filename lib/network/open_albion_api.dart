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
  Future<ResponseCategoryList> getCategoryList(
    @Path() apiToken,
  );

  @GET("/{path}?subcategory_id={subId}&api_token={apiToken}")
  Future<ResponseItemList> getItemListBySubCategoryId(
    @Path() path,
    @Path() apiToken,
    @Path() subId,
  );

  @GET("/weapon-stats/{itemType}/{itemId}?api_token={apiToken}")
  Future<ResponseEnchantmentList> getItemDetailById(
    @Path() apiToken,
    @Path() itemType,
    @Path() itemId,
  );

  @GET("/spells/{itemType}/{itemId}?api_token={apiToken}")
  Future<ResponseSlotList> getSpellDetailById(
    @Path() apiToken,
    @Path() itemType,
    @Path() itemId,
  );
}
