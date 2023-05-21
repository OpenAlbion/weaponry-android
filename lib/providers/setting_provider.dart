import 'package:openalbion_weaponry/persistent/shared_preference.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';

class SettingProvider extends BasedProvider {
  String? _selectedServer;
  String? get selectedServer => _selectedServer;
  final SharedPreference _preference = SharedPreference();

  SettingProvider() {
    _initializeServer();
  }

  _initializeServer() async {
    _selectedServer = await _preference.getMarketServer();
    notifyListeners();
  }

  void changeServer(String server) {
    _selectedServer = server;
    _preference.setMarketServer(name: server);
    notifyListeners();
  }
}
