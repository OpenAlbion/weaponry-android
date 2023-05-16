import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/slot_vo.dart';

part 'response_slot_list.freezed.dart';
part 'response_slot_list.g.dart';

@Freezed()
class ResponseSlotList with _$ResponseSlotList{
  factory ResponseSlotList({
    @Default([])  List<SlotVO> data,
  }) = _ResponseSlotList;

  factory ResponseSlotList.fromJson(Map<String, dynamic> json) => _$ResponseSlotListFromJson(json);
}