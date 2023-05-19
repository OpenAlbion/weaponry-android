import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/about/about_screen.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_about_section.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_category_section.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_header_section.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_setting_section.dart';
import 'package:openalbion_weaponry/features/home/home_screen.dart';
import 'package:openalbion_weaponry/features/setting/setting_screen.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/src/settings/settings_controller.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';

class DrawerBasedScreen extends StatefulWidget {
  static const routeName = 'drawer_based_screen';
  final SettingsController settingsController;

  const DrawerBasedScreen({super.key, required this.settingsController});

  @override
  State<DrawerBasedScreen> createState() => _DrawerBasedScreenState();
}

class _DrawerBasedScreenState extends State<DrawerBasedScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
        builder: (context, child) {
          return Scaffold(
            drawer: Drawer(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                children: [
                  DrawerHeaderSection(),
                  DrawerCategorySection(),
                  DrawerAboutScreen(),
                  Divider(
                      color: get80PercentColor(context).withOpacity(0.2),
                      endIndent: MARGIN_MEDIUM_2,
                      height: 2),
                  DrawerSettingSection(),
                ],
              ),
            ),
            body: Consumer<HomeProvider>(builder: (context, provider, child) {
              switch (provider.selectedCategoryType) {
                case AppConstants.CATEGORY_TYPE_SETTING:
                  return SettingScreen(settingsController: widget.settingsController);

                case AppConstants.CATEGORY_TYPE_ABOUT:
                  return AboutScreen();

                default:
                  return HomeScreen();
              }
            }),
          );
        });
  }
}
