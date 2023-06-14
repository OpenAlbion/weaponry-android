import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/data/vos/report_vo.dart';
import 'package:openalbion_weaponry/data/vos/version_result_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:openalbion_weaponry/network/response/response_category_list.dart';
import 'package:openalbion_weaponry/network/response/response_crafting_list.dart';
import 'package:openalbion_weaponry/network/response/response_enchantment_list.dart';
import 'package:openalbion_weaponry/network/response/response_item_list.dart';
import 'package:openalbion_weaponry/network/response/response_search_result_list.dart';
import 'package:openalbion_weaponry/network/response/response_slot_list.dart';
import 'package:retrofit/http.dart';
part 'open_albion_api.g.dart';

@RestApi(baseUrl: ApiConstants.OPEN_ALBION_URL)
abstract class OpenAlbionApi {
  factory OpenAlbionApi(Dio dio, {String baseUrl}) = _OpenAlbionApi;

  @GET("/categories")
  Future<ResponseCategoryList> getCategoryList({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
  });

  @GET("/{path}?subcategory_id={subId}")
  Future<ResponseItemList> getItemListBySubCategoryId({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() required String path,
    @Path() required int subId,
  });

  @GET("/{itemType}-stats/{itemType2}/{itemId}")
  Future<ResponseEnchantmentList> getItemDetailById({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() required String itemType,
    @Path() required String itemType2,
    @Path() required int itemId,
  });

  @GET("/spells/{itemType}/{itemId}")
  Future<ResponseSlotList> getSpellDetailById({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() required String itemType,
    @Path() required int itemId,
  });

  @GET("/search?search={text}")
  Future<ResponseSearchResultList> searchItem({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() required String text,
  });

  @POST("/bug-report")
  Future<void> reportbug({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Body() required ReportVO reportVO,
  });

  @GET("/version-check")
  Future<VersionResultVO> checkVersion({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
  });

  @GET("/consumable-craftings/consumable/{itemId}")
  Future<ResponseCraftingList> getCraftingDetail({
    @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() required int itemId,
  });
}
