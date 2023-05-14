import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_vo.freezed.dart';
part 'sub_category_vo.g.dart';

@Freezed()
class SubCategoryVO with _$SubCategoryVO {
  factory SubCategoryVO({
    required int id,
    @Default("") String name,
    @Default("") String type,
  }) = _SubCategoryVO;

  factory SubCategoryVO.fromJson(Map<String, dynamic> json) => _$SubCategoryVOFromJson(json);
}
