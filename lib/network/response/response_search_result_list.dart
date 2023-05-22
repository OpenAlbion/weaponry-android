import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';

part 'response_search_result_list.freezed.dart';
part 'response_search_result_list.g.dart';

@Freezed()
class ResponseSearchResultList with _$ResponseSearchResultList{
  factory ResponseSearchResultList({
    @Default([])  List<SearchResultVO> data,
  }) = _ResponseSearchResultList;

  factory ResponseSearchResultList.fromJson(Map<String, dynamic> json) => _$ResponseSearchResultListFromJson(json);
}