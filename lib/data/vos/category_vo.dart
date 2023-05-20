import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/sub_category_vo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'category_vo.freezed.dart';
part 'category_vo.g.dart';

@Freezed()
class CategoryVO with _$CategoryVO {
  factory CategoryVO(
      {required int id,
      @Default("weapons") String path,
      @Default("") String name,
      @Default("") String type,
      @Default([]) List<SubCategoryVO> subcategories}) = _CategoryVO;

  factory CategoryVO.fromJson(Map<String, dynamic> json) => _$CategoryVOFromJson(json);
}

extension CategoryListExtension on List<CategoryVO> {
  List<CategoryVO> getByType(String type) {
    return where((category) => category.type == type).toList();
  }

  List<String> getUniqueTypeList() {
    return map((category) => category.type).toSet().toList();
  }

  CategoryVO getCategoryById(int id) {
    return where((category) => category.id == id).first;
  }

  SubCategoryVO getSubCategoryById(int categoryId, int subCategoryId) {
    return getCategoryById(categoryId).subcategories.where((sub) => sub.id == subCategoryId).first;
  }
}

String convertTypeToLocalizedName(String type, BuildContext context) {
  switch (type) {
    case 'weapon':
      return AppLocalizations.of(context)!.weaponType;

    case 'armor':
      return AppLocalizations.of(context)!.armorType;

    default:
      return AppLocalizations.of(context)!.weaponType;
  }
}

String getCategoryLogoByType(String type) {
  switch (type) {
    case 'weapon':
      return "assets/images/pngs/ic_category_weapon.png";

    default:
      return "assets/images/pngs/ic_category_weapon.png";
  }
}
