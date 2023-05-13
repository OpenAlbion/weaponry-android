import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppNameSection(),
          SizedBox(height: MARGIN_MEDIUM_2),
          ],
      ),
    );
  }
}

class AppNameSection extends StatelessWidget {
  const AppNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(width: MARGIN_MEDIUM),
        IconButton(
          padding: EdgeInsets.all(MARGIN_MEDIUM_2),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: SvgPicture.asset(
            'assets/images/svgs/ic_menu.svg',
            colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          ),
          splashRadius: MARGIN_LARGE,
          constraints: BoxConstraints(
            minWidth: MARGIN_LARGE,
          ),
        ),
        // SizedBox(width: MARGIN_MEDIUM),
        InterText(AppLocalizations.of(context)!.appName, TextStyle(fontSize: TEXT_REGULAR_2X, fontWeight: FontWeight.w500))
      ],
    );
  }
}
