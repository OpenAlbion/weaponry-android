import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_category_section.dart';
import 'package:openalbion_weaponry/features/drawer_based/sections/drawer_header_section.dart';
import 'package:openalbion_weaponry/features/home/home_screen.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';


class DrawerBasedScreen extends StatefulWidget {
  static const routeName = 'drawer_based_screen';
  const DrawerBasedScreen({super.key});

  @override
  State<DrawerBasedScreen> createState() => _DrawerBasedScreenState();
}

class _DrawerBasedScreenState extends State<DrawerBasedScreen> {
  String appVersion = '';

  @override
  void initState() {
    _getAppVersion();
    super.initState();
  }


  void _getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
    });
  }

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
                DrawerCategorySection()
              ],
            ),
          ),
          body: HomeScreen(),
        );
      }
    );
  }
}

