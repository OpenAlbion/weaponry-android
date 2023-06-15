import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
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

  List<MarketPriceVO> _craftingMarketPriceList = [];
  List<MarketPriceVO> get craftingMarketPriceList => _craftingMarketPriceList;

  Map<String, int> alreadyHaveMap = {};

  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();
  final SharedPreference _preference = SharedPreference();

  int perCraft = 10;
  int totalCraftAmount = 100;
  int selectedCraftAmount = 1;
  int profitPerCraft = 0;
  int selectedEnchantment = 0;

  String selectedCity = "";

  void initAvailableCities() {
    _availableCityList = ApiConstants.AVAILABLE_MARKET_LOCATIONS.split(",");
    selectedCity = _availableCityList.first;
    notifyListeners();
  }

  void updateSelectedCity(String city) {
    profitPerCraft = 0;
    selectedCity = city;
    getCraftingMarketPrice(enchantmentId: selectedEnchantment);
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

      getCraftingMarketPrice(enchantmentId: selectedEnchantment);
    });
  }

  void getCraftingMarketPrice({required int enchantmentId}) async {
    var enchantmentVO = getCraftingEnchantment(enchantmentId: enchantmentId);

    if (enchantmentVO == null) {
      return;
    }

    _craftingMarketPriceList = [];
    notifyListeners();

    String consumableIdentifier = enchantmentVO.enchantment != 0
        ? "${enchantmentVO.crafting.consumable.identifier}@${enchantmentVO.enchantment}"
        : enchantmentVO.crafting.consumable.identifier;

    String ingredientIdentifier = enchantmentVO.crafting.requirements
        .map((requirement) => requirement.identifier)
        .toList()
        .join(",");

    // setState(ViewState.LOADING);
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, List<MarketPriceVO>> data = await _repository.getMarketPriceByLocation(
        itemId: "$consumableIdentifier,$ingredientIdentifier", location: selectedCity, quality: "1");
    data.fold((L) {
      appError = L;
      print(appError);
      // setState(ViewState.ERROR);
    }, (R) {
      _craftingMarketPriceList = R;

      var consumableList =
          _craftingMarketPriceList.where((element) => element.itemId == consumableIdentifier);
      if (consumableList.isNotEmpty) {
        profitPerCraft = consumableList.first.sellPriceMin;
      }

      notifyListeners();
    });
  }

  CraftingEnchantmentVO? getCraftingEnchantment({required int enchantmentId}) {
    var enchantmentList =
        _craftingEnchantmentList.where((element) => element.enchantment == enchantmentId).toList();

    if (enchantmentList.isEmpty) {
      appError = AppError(code: "-", message: "There is no crafting process for this item.");
      setState(ViewState.ERROR);
      return null;
    } else {
      return enchantmentList.first;
    }
  }

  void updateSelectedEnchantment(int enchantmentId) {
    selectedEnchantment = enchantmentId;
    notifyListeners();
  }

  // crafting methods
  void updateSelectedCraftAmount(double amount) {
    selectedCraftAmount = amount.toInt();
    notifyListeners();
  }

  int getAlreadyHaveAmount(String identifier) {
    return alreadyHaveMap[identifier] ?? 0;
  }

  int getNeedToBuyAmount({required identifier, required int value}) {
    int alredayHaveAmount = getAlreadyHaveAmount(identifier);
    int totalAmount = selectedCraftAmount * value;
    int result = totalAmount - alredayHaveAmount;
    if (result.isNegative) {
      return 0;
    } else {
      return result;
    }
  }

  String getTotalProfit() {
    if (profitPerCraft == 0) {
      return "Not Available";
    }
    var totalCraft = selectedCraftAmount * perCraft;
    var totalProfit = profitPerCraft * totalCraft;
    return formatNumberInMillion(totalProfit);
  }

  String getCostForIngredient({required String identifier, required int value}) {
    var needToBuyAmount = getNeedToBuyAmount(identifier: identifier, value: value);
    var ingredientList =
        craftingMarketPriceList.where((element) => element.itemId == identifier).toList();

    if (ingredientList.isNotEmpty) {
      var perCost = ingredientList.first.sellPriceMin;

      if (perCost == 0) {
        return "Not Available";
      }
      var totalCost = needToBuyAmount * perCost;
      return formatNumberInMillion(totalCost);
    } else {
      return "Not Available";
    }
  }
}
