import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_vo.freezed.dart';
part 'stat_vo.g.dart';

@Freezed()
class StatVO with _$StatVO {
  factory StatVO({
    @Default("") String name,
    @Default("") String value,
  }) = _StatVO;

  factory StatVO.fromJson(Map<String, dynamic> json) => _$StatVOFromJson(json);
}
