import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_about_section.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_category_section.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_setting_section.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class DrawerBodyScreen extends StatelessWidget {
  const DrawerBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          DrawerCategorySection(),
          DrawerAboutSection(),
          Divider(color: get60PercentColor(context), endIndent: MARGIN_MEDIUM_2, height: 2),
          DrawerSettingSection(),
        ],
      ),
    ));
  }
}
