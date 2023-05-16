import 'package:freezed_annotation/freezed_annotation.dart';

part 'spell_vo.freezed.dart';
part 'spell_vo.g.dart';

@Freezed()
class SpellVO with _$SpellVO {
  factory SpellVO({
    required int id,
    @Default("") String name,
    @Default("") String slot,
    @Default("") String preview,
    @Default("") String icon,
    @Default("") String description,
    @JsonKey(name: "description_html") @Default("") String descriptionHtml,
  }) = _SpellVO;

  factory SpellVO.fromJson(Map<String, dynamic> json) => _$SpellVOFromJson(json);
}
