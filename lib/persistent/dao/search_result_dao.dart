import 'package:hive_flutter/hive_flutter.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/persistent/hive_constants.dart';

class SearchResultDao {
  void addSearchResult(SearchResultVO searchResultVO) {
    var resultVO = searchResultVO.copyWith(createdAt: DateTime.now().microsecondsSinceEpoch);
    openSearchResultBox().put(resultVO.name, resultVO);
  }

  void deleteSearchResult() {
    openSearchResultBox().clear();
  }

  List<SearchResultVO> getSearchResultList() {
    var resultList = openSearchResultBox().values.toList();
    resultList.sort(((a, b) => a.createdAt.compareTo(b.createdAt)));
    return resultList.reversed.toList();
  }

  Box<SearchResultVO> openSearchResultBox() {
    return Hive.box<SearchResultVO>(HiveConstants.BOX_NAME_SEARCH_RESULT_VO);
  }
}
