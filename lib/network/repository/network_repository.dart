import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/data/vos/slot_vo.dart';

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

  Future<Either<AppError, List<MarketPriceVO>>> getMarketPrice({
    required String itemId,
    required int quality
  });

    Future<Either<AppError, List<SearchResultVO>>> searchItem({
    required String text,
  });
}
