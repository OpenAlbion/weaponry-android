import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/setting/section/icon_and_name_section.dart';
import 'package:openalbion_weaponry/providers/setting_provider.dart';
import 'package:openalbion_weaponry/src/settings/settings_controller.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  final SettingsController settingsController;
  static const routeName = 'setting_screen';
  const SettingScreen({super.key, required this.settingsController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChangeNotifierProvider<SettingProvider>(
          create: (context) => SettingProvider(),
          builder: (context, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconAndNameSection(),
                SwitchListTile(
                  title: InterText(AppLocalizations.of(context)!.dark_mode,
                      style: TextStyle(fontSize: TEXT_REGULAR + 1)),
                  value: settingsController.themeMode == ThemeMode.dark,
                  activeColor: primaryRed,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: MARGIN_SMALLER, horizontal: MARGIN_MEDIUM_2),
                  onChanged: (isDarkMode) {
                    settingsController.updateThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
                  },
                ),
                Divider(
                  height: 1,
                  color: get80PercentColor(context).withOpacity(0.3),
                ),
                BugReportSection(settingsController: settingsController),
                Divider(
                  height: 1,
                  color: get80PercentColor(context).withOpacity(0.3),
                ),
                ChooseServerSection(),
                Divider(
                  height: 1,
                  color: get80PercentColor(context).withOpacity(0.3),
                ),
              ],
            );
          }),
    );
  }
}

class BugReportSection extends StatelessWidget {
  const BugReportSection({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingProvider>(builder: (context, provider, child) {
      return SwitchListTile(
        title: InterText(AppLocalizations.of(context)!.shake_to_report,
            style: TextStyle(fontSize: TEXT_REGULAR + 1)),
        value: provider.enableShakeToReport == true,
        activeColor: primaryRed,
        contentPadding: EdgeInsets.symmetric(vertical: MARGIN_SMALLER, horizontal: MARGIN_MEDIUM_2),
        onChanged: (isEnabled) {
          provider.changeShakeToReport(isEnabled);
        },
      );
    });
  }
}

class ChooseServerSection extends StatelessWidget {
  const ChooseServerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingProvider>(builder: (context, provider, child) {
      return provider.selectedServer != null
          ? Theme(
              data: ThemeData(unselectedWidgetColor: get80PercentColor(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MARGIN_MEDIUM_2),
                  Padding(
                    padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                    child: InterText(AppLocalizations.of(context)!.market_price_server,
                        style: TextStyle(fontSize: TEXT_REGULAR + 1, color: get80PercentColor(context))),
                  ),
                  SizedBox(height: MARGIN_MEDIUM),
                  RadioListTile(
                      value: AppConstants.SERVER_EAST,
                      groupValue: provider.selectedServer,
                      title: InterText("East",
                          style: TextStyle(fontSize: TEXT_REGULAR, color: get80PercentColor(context))),
                      activeColor: primaryRed,
                      dense: true,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: MARGIN_MEDIUM_2),
                      onChanged: (value) {
                        provider.changeServer(value!);
                      }),
                  RadioListTile(
                      value: AppConstants.SERVER_WEST,
                      groupValue: provider.selectedServer,
                      dense: true,
                      title: InterText("West",
                          style: TextStyle(fontSize: TEXT_REGULAR, color: get80PercentColor(context))),
                      activeColor: primaryRed,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: MARGIN_MEDIUM_2),
                      onChanged: (value) {
                        provider.changeServer(value!);
                      }),
                ],
              ),
            )
          : SizedBox();
    });
  }
}
