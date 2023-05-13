import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/home/home_screen.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            DrawerHeaderSection(appVersion: appVersion),
          ],
        ),
      ),
      body: HomeScreen(),
    );
  }
}

class DrawerHeaderSection extends StatelessWidget {
  final String appVersion;
  const DrawerHeaderSection({
    required this.appVersion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: primaryRed,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pngs/ic_logo.png',
                  width: 40,
                  filterQuality: FilterQuality.high,
                ),
                SizedBox(height: MARGIN_MEDIUM_2),
                InterText(
                  AppLocalizations.of(context)!.appName,
                  TextStyle(fontSize: TEXT_REGULAR_2X, fontWeight: FontWeight.w500, color: whiteText),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: InterText(
              'Version $appVersion',
              TextStyle(fontSize: TEXT_SMALL, fontWeight: FontWeight.w500, color: whiteText),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset('assets/images/svgs/ic_github.svg', width: MARGIN_LARGE),
              splashRadius: MARGIN_LARGE,
              constraints: BoxConstraints(
                minWidth: MARGIN_LARGE,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
