import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/crafting_enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/persistent/shared_preference.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/utils/currency_utils.dart';

class CraftingProvider extends BasedProvider {
  List<String> _availableCityList = [];
  List<String> get availableCityList => _availableCityList;

  List<CraftingEnchantmentVO> _craftingEnchantmentList = [];
  List<CraftingEnchantmentVO> get craftingEnchantmentList => _craftingEnchantmentList;

  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();
  final SharedPreference _preference = SharedPreference();

  int perCraft = 10;
  int totalCraftAmount = 100;
  int selectedCraftAmount = 1;
  int profitPerCraft = 1800;

  String selectedCity = "";

  void initAvailableCities() {
    _availableCityList = ApiConstants.AVAILABLE_MARKET_LOCATIONS.split(",");
    selectedCity = _availableCityList.first;
    notifyListeners();
  }

  void updateSelectedCity(String city) {
    selectedCity = city;
    notifyListeners();
  }

  // network calls
  void getCraftingDetails({required int itemId}) async {
    setState(ViewState.LOADING);
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, List<CraftingEnchantmentVO>> data =
        await _repository.getCraftingDetail(itemId: itemId);
    data.fold((L) {
      appError = L;
      print(appError);
      setState(ViewState.ERROR);
    }, (R) {
      _craftingEnchantmentList = R;
      setState(ViewState.COMPLETE);
    });
  }

  CraftingEnchantmentVO getCraftingEnchantment({required int enchantmentId}) {
    return _craftingEnchantmentList.where((element) => element.enchantment == enchantmentId).first;
  }

  // crafting methods
  void updateSelectedCraftAmount(double amount) {
    selectedCraftAmount = amount.toInt();
    notifyListeners();
  }

  String getTotalProfit() {
    var totalCraft = selectedCraftAmount * perCraft;
    var totalProfit = profitPerCraft * totalCraft;
    return formatNumberInMillion(totalProfit);
  }
}
