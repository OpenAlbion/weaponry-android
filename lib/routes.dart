import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/features/drawer_based/drawer_based_screen.dart';
import 'package:openalbion_weaponry/features/home/home_screen.dart';
import 'package:openalbion_weaponry/features/item_detail/item_detail_screen.dart';
import 'package:openalbion_weaponry/src/settings/settings_controller.dart';

class Routes {
  static Route<dynamic>? generateRoutes(RouteSettings routeSettings, SettingsController controller) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) {
        switch (routeSettings.name) {
          case HomeScreen.routeName:
            return HomeScreen();

          case DrawerBasedScreen.routeName:
            return Builder(
              builder: (context) {
                return DrawerBasedScreen(settingsController: controller);
              }
            );

          case ItemDetailScreen.routeName:
            final args = ModalRoute.of(context)!.settings.arguments as ItemDetailArgs;
            return ItemDetailScreen(args: args);

          default:
            // return TestScreen();
            return DrawerBasedScreen(settingsController: controller);
        }
      },
    );
  }
}
