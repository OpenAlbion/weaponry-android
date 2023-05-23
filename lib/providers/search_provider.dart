import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/persistent/dao/search_result_dao.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';

class SearchProvider extends BasedProvider {
  bool showSearchSection = false;
  List<SearchResultVO> _searchResultHistoryList = [];
  List<SearchResultVO> get searchResultHistoryList => _searchResultHistoryList;

  List<SearchResultVO> _searchResultList = [];
  List<SearchResultVO> get searchResultList => _searchResultList;

  final SearchResultDao _searchResultDao = SearchResultDao();

  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();

  void searchItem({required String text}) async {
    _searchResultList = [];
    setState(ViewState.LOADING);
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, List<SearchResultVO>> data = await _repository.searchItem(text: text);
    data.fold((L) {
      appError = L;
      print(appError);
      setState(ViewState.ERROR);
    }, (R) {
      _searchResultList = R;
      // print("success $marketPriceList");
      // _selectedEnchantment = _enchanmentList.first;
      // _selectedQuality = _selectedEnchantment.stats.first;

      // _getSpellDetail(type, id);
      setState(ViewState.COMPLETE);
    });
  }

  void getSearchResult() {
    _searchResultHistoryList = _searchResultDao.getSearchResultList();
    print(_searchResultHistoryList);
    notifyListeners();
  }

  void shouldShowSearchSection(bool update) {
    showSearchSection = update;
    notifyListeners();
  }

  void addSearchResult(SearchResultVO searchResultVO) {
    _searchResultDao.addSearchResult(searchResultVO);
    _searchResultHistoryList = _searchResultDao.getSearchResultList();
    notifyListeners();
  }

  void deleteAllSearchResult() {
    _searchResultDao.deleteSearchResult();
  }
}
