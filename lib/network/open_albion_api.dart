import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/data/vos/report_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:openalbion_weaponry/network/response/response_category_list.dart';
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
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
  });

  @GET("/{path}?subcategory_id={subId}")
  Future<ResponseItemList> getItemListBySubCategoryId({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String path,
    @Path() required int subId,
  });

  @GET("/{itemType}-stats/{itemType2}/{itemId}")
  Future<ResponseEnchantmentList> getItemDetailById({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String itemType,
    @Path() required String itemType2,
    @Path() required int itemId,
  });

  @GET("/spells/{itemType}/{itemId}")
  Future<ResponseSlotList> getSpellDetailById({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String itemType,
    @Path() required int itemId,
  });

  @GET("/search?search={text}")
  Future<ResponseSearchResultList> searchItem({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() required String text,
  });

  @POST("/bug-report")
  Future<void> reportbug({
    @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Body() required ReportVO reportVO,
  });
}
