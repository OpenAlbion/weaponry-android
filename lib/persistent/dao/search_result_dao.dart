import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/persistent/hive_constants.dart';

class SearchResultDao {
  void addSearchResult(SearchResultVO searchResultVO) {
    openSearchResultBox().put(searchResultVO.name, searchResultVO);
  }

  void deleteSearchResult() {
    openSearchResultBox().clear();
  }

  List<SearchResultVO> getSearchResultList() {
    return openSearchResultBox().values.toList();
  }

  Box<SearchResultVO> openSearchResultBox() {
    return Hive.box<SearchResultVO>(HiveConstants.BOX_NAME_SEARCH_RESULT_VO);
  }
}
