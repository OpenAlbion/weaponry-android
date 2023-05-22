import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/home/sections/app_name_section.dart';
import 'package:openalbion_weaponry/features/home/sections/search_bar_section.dart';
import 'package:openalbion_weaponry/features/home/sections/search_item_section.dart';
import 'package:openalbion_weaponry/features/home/sections/sub_category_and_item_list_section.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/providers/search_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppNameSection(),
          SizedBox(height: MARGIN_CARD_MEDIUM),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: SearchBarSection(
              onDimissSearch: (text) {
                FocusScope.of(context).requestFocus(FocusNode());
                context.read<SearchProvider>().shouldShowSearchSection(text.isNotEmpty);
              },
              onChanged: (text) {
                context.read<SearchProvider>().shouldShowSearchSection(true);
                context.read<SearchProvider>().searchItem(text: text);
              },
            ),
          ),
          Consumer<SearchProvider>(builder: (context, provider, child) {
            if (provider.showSearchSection) {
              // return SubCategoryAndItemListSection();

              return SearchItemSection();
            } else {
              // return SearchItemSection();

              return SubCategoryAndItemListSection();
            }
          }),
        ],
      ),
    );
  }
}
