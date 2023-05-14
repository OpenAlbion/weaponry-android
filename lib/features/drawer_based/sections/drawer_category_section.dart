import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/providers/based_drawer_provider.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
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
    return Consumer<BasedDrawerProvider>(builder: (context, provider, child) {
      return _renderUI(provider, context);
    });
  }

  Widget _renderUI(BasedDrawerProvider provider, BuildContext context) {
    switch (provider.state) {
      case ViewState.LOADING:
        return _buildLoadingUI();

      case ViewState.COMPLETE:
        return _buildCompleteUI(provider, context);

      default:
        return SizedBox();
    }
  }

  Widget _buildCompleteUI(BasedDrawerProvider provider, BuildContext context) {
    return Column(
      children: provider.categoryList.getUniqueTypeList().map((type) {
        return ExpansionTile(
          title: InterText(convertTypeToLocalizedName(type, context)),
          children: provider.categoryList.getByType(type).map((category) {
            return ListTile(
              leading: Image.asset(getCategoryLogoByType(type), width: MARGIN_LARGE),
              title: InterText(category.name),
            );
          }).toList(),
        );
      }).toList(),
    );
  }

  Widget _buildLoadingUI() {
    return Shimmer.fromColors(
      baseColor: whiteText,
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
