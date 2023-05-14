import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/home/sections/app_name_section.dart';
import 'package:openalbion_weaponry/features/home/sections/item_list_section.dart';
import 'package:openalbion_weaponry/features/home/sections/search_section.dart';
import 'package:openalbion_weaponry/features/home/sections/sub_category_list_section.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController? _searchController;
  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppNameSection(),
          SizedBox(height: MARGIN_CARD_MEDIUM),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: SearchSection(
              controller: _searchController,
              onDimissSearch: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          SubCategoryListSection(),
          SizedBox(height: MARGIN_MEDIUM_2),
          ItemListSection()
        ],
      ),
    );
  }
}

