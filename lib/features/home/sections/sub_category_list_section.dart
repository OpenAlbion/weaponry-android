import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:provider/provider.dart';

class SubCategoryListSection extends StatefulWidget {
  const SubCategoryListSection({
    super.key,
  });

  @override
  State<SubCategoryListSection> createState() => _SubCategoryListSectionState();
}

class _SubCategoryListSectionState extends State<SubCategoryListSection> with TickerProviderStateMixin {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return _renderUI(provider, context, scrollController);
    });
  }

  Widget _renderUI(HomeProvider provider, BuildContext context, ScrollController scrollController) {
    switch (provider.state) {
      case ViewState.COMPLETE:
        return _buildCompleteUI(provider, context, scrollController);

      default:
        return Placeholder();
    }
  }

  Widget _buildCompleteUI(
      HomeProvider provider, BuildContext context, ScrollController scrollController) {
    // return TabBar(
    //     controller: TabController(length: provider.selectedCategory.subcategories.length, vsync: this),
    //     indicatorColor: secondaryRed,
    //     indicatorSize: TabBarIndicatorSize.label,
    //     isScrollable: true,
    //     labelStyle: TextStyle(fontFamily: inter),
    //     labelColor: Theme.of(context).textTheme.displayMedium!.color,
    //     unselectedLabelColor: Theme.of(context).textTheme.displayMedium!.color!.withOpacity(0.5),
    //     splashFactory: NoSplash.splashFactory,
    //     tabs: provider.selectedCategory.subcategories.map((subCategory) {
    //       return Tab(
    //         text: subCategory.name,
    //       );
    //     }).toList());

    return SizedBox(
        height: 28,
        child: ListView.builder(
            controller: scrollController,
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
            }));
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
