import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';

part 'response_enchantment_list.freezed.dart';
part 'response_enchantment_list.g.dart';

@Freezed()
class ResponseEnchantmentList with _$ResponseEnchantmentList{
  factory ResponseEnchantmentList({
    @Default([])  List<EnchantmentVO> data,
  }) = _ResponseEnchantmentList;

  factory ResponseEnchantmentList.fromJson(Map<String, dynamic> json) => _$ResponseEnchantmentListFromJson(json);
}