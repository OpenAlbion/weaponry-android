import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/persistent/shared_preference.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';

class MarketPriceProvider extends BasedProvider {
  List<MarketPriceVO> _marketPriceList = [];
  List<MarketPriceVO> get marketPriceList => _marketPriceList;

  String selectedId = "";
  int selectedEnchantment = 0;
  String selectedMarketServer = "";

  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();
  final SharedPreference _preference = SharedPreference();

  void initializeIdAndMarket(String id) {
    selectedId = id;
    _initializeMarketServer();
    getMarketPrice();
  }

  void _initializeMarketServer() async {
    var server = await _preference.getMarketServer();
    selectedMarketServer = server == AppConstants.SERVER_EAST ? "East" : "West";
    notifyListeners();
  }

  void getMarketPrice() async {
    _marketPriceList = [];
    setState(ViewState.LOADING);
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, List<MarketPriceVO>> data = await _repository.getMarketPrice(
        itemId: selectedEnchantment != 0 ? "$selectedId@$selectedEnchantment" : selectedId,
        quality: AppConstants.AVAILABLE_MARKET_QUALITY);
    data.fold((L) {
      appError = L;
      print(appError);
      setState(ViewState.ERROR);
    }, (R) {
      _marketPriceList = R;
      _marketPriceList.sort((a, b) => a.quality.compareTo(b.quality));
      // print("success $marketPriceList");
      // _selectedEnchantment = _enchanmentList.first;
      // _selectedQuality = _selectedEnchantment.stats.first;

      // _getSpellDetail(type, id);
      setState(ViewState.COMPLETE);
    });
  }
}
