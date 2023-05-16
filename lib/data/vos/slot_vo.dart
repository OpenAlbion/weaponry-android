import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/spell_vo.dart';

part 'slot_vo.freezed.dart';
part 'slot_vo.g.dart';

@Freezed()
class SlotVO with _$SlotVO{
  factory SlotVO({
    @Default("") String slot,
    @Default([]) List<SpellVO> spells,
  }) = _SlotVO;

  factory SlotVO.fromJson(Map<String, dynamic> json) => _$SlotVOFromJson(json);
}