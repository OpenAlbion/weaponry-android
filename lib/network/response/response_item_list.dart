import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';

part 'response_item_list.freezed.dart';
part 'response_item_list.g.dart';

@Freezed()
class ResponseItemList with _$ResponseItemList{
  factory ResponseItemList({
    required List<ItemVO> data,
  }) = _ResponseItemList;

  factory ResponseItemList.fromJson(Map<String, dynamic> json) => _$ResponseItemListFromJson(json);
}