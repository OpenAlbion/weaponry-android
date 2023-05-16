import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openalbion_weaponry/data/vos/stat_vo.dart';

part 'double_stat_vo.dart.freezed.dart';
part 'double_stat_vo.dart.g.dart';

@Freezed()
class DoubleStatVO with _$DoubleStatVO{
  factory DoubleStatVO({
    required StatVO firstStat,
    required StatVO secondStat
  }) = _DoubleStatVO;

  factory DoubleStatVO.fromJson(Map<String, dynamic> json) => _$DoubleStatVOFromJson(json);
}