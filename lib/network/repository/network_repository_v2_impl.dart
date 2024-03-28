import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:openalbion_weaponry/app/core/based/based_response.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/data/vos/crafting_enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/data/vos/report_vo.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/data/vos/slot_vo.dart';
import 'package:openalbion_weaponry/data/vos/version_result_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:openalbion_weaponry/network/dio/dio_client.dart';
import 'package:openalbion_weaponry/network/error/error_mapper.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_v2.dart';
import 'package:openalbion_weaponry/persistent/shared_preference.dart';

class NetworkRepositoryV2Impl implements NetworkRepositoryV2 {
  static final NetworkRepositoryV2Impl _singleton = NetworkRepositoryV2Impl.internal();
  final DioClient _albionClient = DioClient();

  factory NetworkRepositoryV2Impl() {
    return _singleton;
  }

  NetworkRepositoryV2Impl.internal();

  final SharedPreference _preference = SharedPreference();

  @override
  Future<BasedResponse<List<CategoryVO>>> getCategoryList() async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient.openAlbionApi().getCategoryList(key: key);
      return ResponseSuccess<List<CategoryVO>>(data: response.data);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<CategoryVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<CategoryVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<CategoryVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<CategoryVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<ItemVO>>> getItemListBySubCategoryId(int subId, String path) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient
          .openAlbionApi()
          .getItemListBySubCategoryId(key: key, subId: subId, path: path);

      return ResponseSuccess<List<ItemVO>>(data: response.data);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<CategoryVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<ItemVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<ItemVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<ItemVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<EnchantmentVO>>> getItemDetailById(String itemType, int itemId) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient
          .openAlbionApi()
          .getItemDetailById(key: key, itemType: itemType, itemType2: itemType, itemId: itemId);

      return ResponseSuccess<List<EnchantmentVO>>(data: response.data);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<EnchantmentVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<EnchantmentVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<EnchantmentVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<EnchantmentVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<SlotVO>>> getSpellDetailById(String itemType, int itemId) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient
          .openAlbionApi()
          .getSpellDetailById(key: key, itemType: itemType, itemId: itemId);

      return ResponseSuccess<List<SlotVO>>(data: response.data);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<SlotVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<SlotVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<SlotVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<SlotVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<MarketPriceVO>>> getMarketPrice(
      {required String itemId, required String quality}) async {
    try {
      final server = await _preference.getMarketServer();
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient.marketPriceApi().getMarketPrice(
          key: key,
          region: server,
          itemId: itemId,
          quality: quality,
          locations: ApiConstants.AVAILABLE_MARKET_LOCATIONS);

      return ResponseSuccess<List<MarketPriceVO>>(data: response);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<MarketPriceVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<MarketPriceVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<MarketPriceVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<MarketPriceVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<SearchResultVO>>> searchItem({required String text}) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient.openAlbionApi().searchItem(key: key, text: text);

      return ResponseSuccess<List<SearchResultVO>>(data: response.data);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<SearchResultVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<SearchResultVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<SearchResultVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<SearchResultVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<String>> reportBug({required ReportVO report}) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      await _albionClient.openAlbionApi().reportbug(key: key, reportVO: report);

      return ResponseSuccess<String>(data: "");
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<SearchResultVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<String>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<String>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<String>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<VersionResultVO>> checkVersion() async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient.openAlbionApi().checkVersion(key: key);

      return ResponseSuccess<VersionResultVO>(data: response);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<SearchResultVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<VersionResultVO>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<VersionResultVO>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<VersionResultVO>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<CraftingEnchantmentVO>>> getCraftingDetail({required int itemId}) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient.openAlbionApi().getCraftingDetail(key: key, itemId: itemId);

      return ResponseSuccess<List<CraftingEnchantmentVO>>(data: response.data);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<CraftingEnchantmentVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<CraftingEnchantmentVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<CraftingEnchantmentVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<CraftingEnchantmentVO>>(code: "Firebase Exception", message: e.message);
    }
  }

  @override
  Future<BasedResponse<List<MarketPriceVO>>> getMarketPriceByLocation(
      {required String itemId, required String quality, required String location}) async {
    try {
      final server = await _preference.getMarketServer();
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) {
        return ResponseError(code: "-", message: "X-Weaponry-Key Empty.");
      }

      var response = await _albionClient.marketPriceApi().getMarketPrice(
          key: key, region: server, itemId: itemId, quality: quality, locations: location);

      return ResponseSuccess<List<MarketPriceVO>>(data: response);
    } on DioException catch (e) {
      return ErrorMapper.mapDioToResponseError<List<MarketPriceVO>>(e);
    } on JsonUnsupportedObjectError catch (_) {
      return ResponseError<List<MarketPriceVO>>(code: "-", message: "Respond is not Json");
    } on TypeError catch (_) {
      return ResponseError<List<MarketPriceVO>>(code: "-", message: "Invalid json type");
    } on FirebaseException catch (e) {
      return ResponseError<List<MarketPriceVO>>(code: "Firebase Exception", message: e.message);
    }
  }
}
