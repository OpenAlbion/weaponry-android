import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_vo.freezed.dart';
part 'attribute_vo.g.dart';

@Freezed()
class AttributeVO with _$AttributeVO{
  factory AttributeVO({
    @Default("")  String name,
        @Default("")  String value,

  }) = _AttributeVO;

  factory AttributeVO.fromJson(Map<String, dynamic> json) => _$AttributeVOFromJson(json);
}