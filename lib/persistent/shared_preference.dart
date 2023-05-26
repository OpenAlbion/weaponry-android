import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static final SharedPreference _singleton = SharedPreference._internal();

  factory SharedPreference() {
    return _singleton;
  }

  SharedPreference._internal();

  void setTheme({required bool isDarkMode}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.PREF_THEME, isDarkMode);
  }

  Future<bool> isDarkMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(AppConstants.PREF_THEME) ?? false;
  }

  void setMarketServer({required String name}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConstants.PREF_MARKET_SERVER, name);
  }

  Future<String> getMarketServer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(AppConstants.PREF_MARKET_SERVER) ?? AppConstants.SERVER_EAST;
  }

  void setShakeToReport({required bool isEnable}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.PREF_SHAKE_TO_BUG_REPORT, isEnable);
  }

  Future<bool> getShakeToReport() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(AppConstants.PREF_SHAKE_TO_BUG_REPORT) ?? true;
  }
}
