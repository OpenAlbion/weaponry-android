import 'package:dartz/dartz.dart';
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

abstract class NetworkRepository {
  // Future<Either<AppError, ItemDetailVO>> getItemDetail(String itemId);
  Future<Either<AppError, List<CategoryVO>>> getCategoryList();
  Future<Either<AppError, List<ItemVO>>> getItemListBySubCategoryId(
    int subId,
    String path,
  );

  Future<Either<AppError, List<EnchantmentVO>>> getItemDetailById(
    String itemType,
    int itemId,
  );

  Future<Either<AppError, List<SlotVO>>> getSpellDetailById(
    String itemType,
    int itemId,
  );

  Future<Either<AppError, List<MarketPriceVO>>> getMarketPrice(
      {required String itemId, required String quality});

  Future<Either<AppError, List<MarketPriceVO>>> getMarketPriceByLocation(
      {required String itemId, required String quality, required String location});

  Future<Either<AppError, List<SearchResultVO>>> searchItem({
    required String text,
  });

  Future<Either<AppError, String>> reportBug({
    required ReportVO report,
  });

  Future<Either<AppError, VersionResultVO>> checkVersion();

  Future<Either<AppError, List<CraftingEnchantmentVO>>> getCraftingDetail({required int itemId});
}
