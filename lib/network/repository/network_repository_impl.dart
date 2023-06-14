import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:openalbion_weaponry/network/dio/dio_client.dart';
import 'package:openalbion_weaponry/network/error/error_mapper.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/persistent/shared_preference.dart';

class NetworkRepositoryImpl implements NetworkRepository {
  static final NetworkRepositoryImpl _singleton = NetworkRepositoryImpl.internal();
  final DioClient _albionClient = DioClient();

  factory NetworkRepositoryImpl() {
    return _singleton;
  }

  NetworkRepositoryImpl.internal();

  final SharedPreference _preference = SharedPreference();

  @override
  Future<Either<AppError, List<CategoryVO>>> getCategoryList() async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient.openAlbionApi().getCategoryList(key: key);
      return Right(response.data);

      // print("env --> ${dotenv.env['API_TOKEN']}");
      // final String response =
      //     await rootBundle.loadString("assets/mock_json/response_category_list.json");

      // final Map<String, dynamic> mappedJson = await jsonDecode(response);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, List<ItemVO>>> getItemListBySubCategoryId(int subId, String path) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient
          .openAlbionApi()
          .getItemListBySubCategoryId(key: key, subId: subId, path: path);

      return Right(response.data);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, List<EnchantmentVO>>> getItemDetailById(String itemType, int itemId) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient
          .openAlbionApi()
          .getItemDetailById(key: key, itemType: itemType, itemType2: itemType, itemId: itemId);

      return Right(response.data);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, List<SlotVO>>> getSpellDetailById(String itemType, int itemId) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient
          .openAlbionApi()
          .getSpellDetailById(key: key, itemType: itemType, itemId: itemId);

      return Right(response.data);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, List<MarketPriceVO>>> getMarketPrice(
      {required String itemId, required String quality}) async {
    try {
      final server = await _preference.getMarketServer();
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient.marketPriceApi().getMarketPrice(
          key: key,
          region: server,
          itemId: itemId,
          quality: quality,
          locations: ApiConstants.AVAILABLE_MARKET_LOCATIONS);

      return Right(response);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, List<SearchResultVO>>> searchItem({required String text}) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient.openAlbionApi().searchItem(key: key, text: text);

      return Right(response.data);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, String>> reportBug({required ReportVO report}) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      await _albionClient.openAlbionApi().reportbug(key: key, reportVO: report);

      return Right("");
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, VersionResultVO>> checkVersion() async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient.openAlbionApi().checkVersion(key: key);

      return Right(response);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

  @override
  Future<Either<AppError, List<CraftingEnchantmentVO>>> getCraftingDetail({required int itemId}) async {
    try {
      String? key = dotenv.env[ApiConstants.X_WEAPONRY_KEY];
      if (key == null) return Left(AppError(code: "-", message: "X-Weaponry-Key Empty."));

      var response = await _albionClient.openAlbionApi().getCraftingDetail(key: key, itemId: itemId);

      return Right(response.data);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }
}
