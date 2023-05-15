import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/features/drawer_based/drawer_based_screen.dart';
import 'package:openalbion_weaponry/features/home/home_screen.dart';
import 'package:openalbion_weaponry/features/item_detail/item_detail_screen.dart';
import 'package:openalbion_weaponry/features/test/test_screen.dart';

class Routes {
  static Route<dynamic>? generateRoutes(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) {
        switch (routeSettings.name) {
          case HomeScreen.routeName:
            return HomeScreen();

          case DrawerBasedScreen.routeName:
            return DrawerBasedScreen();

          case ItemDetailScreen.routeName:
            // final args = ModalRoute.of(context)!.settings.arguments as ItemDetailArgs;
            return ItemDetailScreen();

          default:
            // return TestScreen();
            return DrawerBasedScreen();
        }
      },
    );
  }
}
