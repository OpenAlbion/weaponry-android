import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/network/dio/dio_client.dart';
import 'package:openalbion_weaponry/network/error/error_mapper.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/response/response_category_list.dart';

class NetworkRepositoryImpl implements NetworkRepository {
  static final NetworkRepositoryImpl _singleton = NetworkRepositoryImpl.internal();

  factory NetworkRepositoryImpl() {
    return _singleton;
  }

  NetworkRepositoryImpl.internal();

  final DioClient _albionClient = DioClient();

  @override
  Future<Either<AppError, List<CategoryVO>>> getCategoryList() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      var response = await _albionClient.openAlbionApi().getCategoryList();
      // final String response =
      //     await rootBundle.loadString("assets/mock_json/response_category_list.json");

      // final Map<String, dynamic> mappedJson = await jsonDecode(response);
      return Right(response.data);
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    }
  }

  // @override
  // Future<Either<AppError, ItemDetailVO>> getItemDetail(String itemId) async {
  //   try {
  //     var data = await _albionClient.toolApi().getItemDetail(itemId);
  //     return Right(data);
  //   } on DioError catch (e) {
  //     return Left(ErrorMapper.mapDioToAppError(e));
  //   } on JsonUnsupportedObjectError catch (_) {
  //     return Left(AppError(code: "-", message: "Respond is not Json"));
  //   } on TypeError catch (_) {
  //     return Left(AppError(code: "-", message: "Invalid Json Type"));
  //   }
  // }
}
