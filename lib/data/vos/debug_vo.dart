import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_vo.freezed.dart';
part 'debug_vo.g.dart';

@Freezed()
class DebugVO with _$DebugVO{
  factory DebugVO({
    @Default("")  String version,
    @Default("") String screen
  }) = _DebugVO;

  factory DebugVO.fromJson(Map<String, dynamic> json) => _$DebugVOFromJson(json);
}