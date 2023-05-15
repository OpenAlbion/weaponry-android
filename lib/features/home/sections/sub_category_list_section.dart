import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';
import 'package:openalbion_weaponry/features/home/widgets/sub_category_loading.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class SubCategoryListSection extends StatefulWidget {
  const SubCategoryListSection({
    super.key,
  });

  @override
  State<SubCategoryListSection> createState() => _SubCategoryListSectionState();
}

class _SubCategoryListSectionState extends State<SubCategoryListSection> {
  final itemKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return _renderUI(provider, context);
    });
  }

  Widget _renderUI(HomeProvider provider, BuildContext context) {
    switch (provider.state) {
      case ViewState.COMPLETE:
        return _buildCompleteUI(provider, context);

      case ViewState.LOADING:
        return SubCategoryLoading();

      default:
        return SizedBox();
    }
  }

  Widget _buildCompleteUI(HomeProvider provider, BuildContext context) {
    return SizedBox(
      height: HEIGHT_SUB_CATEGORY,
      child: ListView.builder(
        key: itemKey,
        padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM),
        itemCount: provider.selectedCategory.subcategories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              provider.setCategoryAndSubCategory(
                  subId: provider.selectedCategory.subcategories[index].id);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
              child: Column(
                children: [
                  Text(
                    provider.selectedCategory.subcategories[index].name,
                    style: TextStyle(
                        color: provider.selectedCategory.subcategories[index] ==
                                provider.selectedSubCategory
                            ? Theme.of(context).textTheme.displayMedium!.color
                            : Theme.of(context).textTheme.displayMedium!.color!.withOpacity(0.5)),
                  ),
                  provider.selectedCategory.subcategories[index] == provider.selectedSubCategory
                      ? RedDotWidget()
                      : SizedBox()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class RedDotWidget extends StatelessWidget {
  const RedDotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MARGIN_MEDIUM),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(color: secondaryRed, shape: BoxShape.circle),
        )
      ],
    );
  }
}
