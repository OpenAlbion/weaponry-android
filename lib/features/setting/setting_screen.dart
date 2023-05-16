import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/setting/section/icon_and_name_section.dart';
import 'package:openalbion_weaponry/src/settings/settings_controller.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class SettingScreen extends StatelessWidget {
  final SettingsController settingsController;
  static const routeName = 'setting_screen';
  const SettingScreen({super.key, required this.settingsController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          IconAndNameSection(),
          SwitchListTile(
            title: InterText('Dark Mode'),
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
          )
        ],
      ),
    );
  }
}
