import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';

abstract class NetworkRepository {
  // Future<Either<AppError, ItemDetailVO>> getItemDetail(String itemId);
  Future<Either<AppError, List<CategoryVO>>> getCategoryList();
}
