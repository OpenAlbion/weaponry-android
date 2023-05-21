import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/persistent/shared_preference.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  late SharedPreference preference;

  SettingsService() {
   preference = SharedPreference();
  }

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async  => await preference.isDarkMode() ? ThemeMode.dark: ThemeMode.light;
  // ThemeMode themeMode() => preference.isDarkMode() ? ThemeMode.dark : ThemeMode.light;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
    preference.setTheme(isDarkMode: theme == ThemeMode.dark);
  }
}
