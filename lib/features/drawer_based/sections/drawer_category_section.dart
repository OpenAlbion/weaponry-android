import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class DrawerCategorySection extends StatefulWidget {
  const DrawerCategorySection({super.key});

  @override
  State<DrawerCategorySection> createState() => _DrawerCategorySection();
}

class _DrawerCategorySection extends State<DrawerCategorySection> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return _renderUI(provider, context);
    });
  }

  Widget _renderUI(HomeProvider provider, BuildContext context) {
    switch (provider.state) {
      case ViewState.LOADING:
        return _buildLoadingUI();

      case ViewState.COMPLETE:
        return _buildCompleteUI(provider, context);

      default:
        return SizedBox();
    }
  }

  Widget _buildCompleteUI(HomeProvider provider, BuildContext context) {
    return Column(
      children: provider.categoryList.getUniqueTypeList().map((type) {
        return Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: Column(
            children: [
              ExpansionTile(
                collapsedIconColor: get80PercentColor(context),
                iconColor: secondaryRed,
                initiallyExpanded: provider.selectedCategoryType == type,
                title: InterText(convertTypeToLocalizedName(type, context)),
                children: provider.categoryList.getByType(type).map((category) {
                  return ListTile(
                    selected: provider.selectedCategory.id == category.id,
                    title: InterText(
                        "  ${category.name}",
                        style: TextStyle(
                            color: provider.selectedCategory.id == category.id &&
                                    provider.selectedCategoryType == provider.selectedCategory.type
                                ? secondaryRed
                                : get80PercentColor(context))),
                    onTap: () {
                      provider.setCategoryAndSubCategory(catId: category.id, setFirstSubcategory: true);
                      Navigator.pop(context);
                    },
                  );
                }).toList(),
              ),
              Divider(
                  color: get60PercentColor(context),
                  endIndent: MARGIN_MEDIUM_2,
                  height: 2),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLoadingUI() {
    return Shimmer.fromColors(
      baseColor: getCardColor(context),
      highlightColor: Colors.grey.withOpacity(0.4),
      child: Column(
        children: [
          ExpansionTile(
            initiallyExpanded: true,
            expandedAlignment: Alignment.centerLeft,
            title: Container(
              color: whiteText,
              width: 20,
              height: 10,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: Container(
                  color: whiteText,
                  width: 80,
                  height: 10,
                ),
              ),
              SizedBox(height: MARGIN_LARGE),
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: Container(
                  color: whiteText,
                  width: 80,
                  height: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: MARGIN_LARGE),
          ExpansionTile(
            initiallyExpanded: true,
            expandedAlignment: Alignment.centerLeft,
            title: Container(
              color: whiteText,
              width: 20,
              height: 10,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: Container(
                  color: whiteText,
                  width: 80,
                  height: 10,
                ),
              ),
              SizedBox(height: MARGIN_LARGE),
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: Container(
                  color: whiteText,
                  width: 80,
                  height: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: MARGIN_LARGE),
          ExpansionTile(
            initiallyExpanded: true,
            expandedAlignment: Alignment.centerLeft,
            title: Container(
              color: whiteText,
              width: 20,
              height: 10,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: Container(
                  color: whiteText,
                  width: 80,
                  height: 10,
                ),
              ),
              SizedBox(height: MARGIN_LARGE),
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: Container(
                  color: whiteText,
                  width: 80,
                  height: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
