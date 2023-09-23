import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/providers/home_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DrawerAboutSection extends StatelessWidget {
  const DrawerAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Consumer<HomeProvider>(builder: (context, provider, child) {
        return ListTile(
          selected: provider.selectedCategoryType == AppConstants.CATEGORY_TYPE_ABOUT,
          title: InterText(
              AppLocalizations.of(context)!.about,
              style: TextStyle(
                  color: provider.selectedCategoryType == AppConstants.CATEGORY_TYPE_ABOUT
                      ? secondaryRed
                      : get80PercentColor(context))),
          onTap: () {
            provider.selectCategoryType(AppConstants.CATEGORY_TYPE_ABOUT);
            Navigator.pop(context);
          },
        );
      }),
    );  }
}