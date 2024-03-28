import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/app/core/based/based_response.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/data/vos/crafting_enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/data/vos/report_vo.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/data/vos/slot_vo.dart';
import 'package:openalbion_weaponry/data/vos/version_result_vo.dart';

abstract class NetworkRepositoryV2 {
  Future<BasedResponse<List<CategoryVO>>> getCategoryList();

  Future<BasedResponse<List<ItemVO>>> getItemListBySubCategoryId(
    int subId,
    String path,
  );

  Future<BasedResponse<List<EnchantmentVO>>> getItemDetailById(String itemType, int itemId);

  Future<BasedResponse<List<SlotVO>>> getSpellDetailById(
    String itemType,
    int itemId,
  );

  Future<BasedResponse<List<MarketPriceVO>>> getMarketPrice(
      {required String itemId, required String quality});

  Future<BasedResponse<List<MarketPriceVO>>> getMarketPriceByLocation(
      {required String itemId, required String quality, required String location});

  Future<BasedResponse<List<SearchResultVO>>> searchItem({
    required String text,
  });

 Future<BasedResponse<String>> reportBug({
    required ReportVO report,
  });

  Future<BasedResponse<VersionResultVO>> checkVersion();

  Future<BasedResponse<List<CraftingEnchantmentVO>>> getCraftingDetail({required int itemId});
}
