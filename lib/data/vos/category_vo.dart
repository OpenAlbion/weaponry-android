import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/sub_category_vo.dart';

part 'category_vo.freezed.dart';
part 'category_vo.g.dart';

@Freezed()
class CategoryVO with _$CategoryVO {
  factory CategoryVO(
      {@Default("") String id,
      @Default("") String name,
      @Default("") String type,
      @Default([]) List<SubCategoryVO> subcategories}) = _CategoryVO;

  factory CategoryVO.fromJson(Map<String, dynamic> json) => _$CategoryVOFromJson(json);
}
