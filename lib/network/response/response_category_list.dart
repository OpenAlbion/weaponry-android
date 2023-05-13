import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';

part 'response_category_list.freezed.dart';
part 'response_category_list.g.dart';

@Freezed()
class ResponseCategoryList with _$ResponseCategoryList{
  factory ResponseCategoryList({
    @Default([])  List<CategoryVO> data,
  }) = _ResponseCategoryList;

  factory ResponseCategoryList.fromJson(Map<String, dynamic> json) => _$ResponseCategoryListFromJson(json);
}