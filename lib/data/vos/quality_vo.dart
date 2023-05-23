import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:openalbion_weaponry/data/vos/double_stat_vo.dart.dart';
import 'package:openalbion_weaponry/data/vos/stat_vo.dart';

part 'quality_vo.freezed.dart';
part 'quality_vo.g.dart';

@Freezed()
class QualityVO with _$QualityVO {
  factory QualityVO({
    required int id,
    @Default("") String quality,
    required int enchantment,
    required List<StatVO> stats,
  }) = _QualityVO;

  factory QualityVO.fromJson(Map<String, dynamic> json) => _$QualityVOFromJson(json);
}

extension StatVOExtension on List<StatVO> {
  List<DoubleStatVO> toDoubleStatList() {
    var currentList = toList();
    List<DoubleStatVO> doubleStatList = [];
    if (isEmpty) return [];

    if (length.isOdd) {
      currentList.add(StatVO(name: "", value: ""));
    }

    for (int i = 0; i < currentList.length - 1; i = i + 2) {
      doubleStatList.add(DoubleStatVO(firstStat: currentList[i], secondStat: currentList[i + 1]));
    }

    return doubleStatList;
  }
}

int convertQualityNameToQualityId(String name) {
  switch (name) {
    case "Normal":
      return 1;

    case "Good":
      return 2;

    case "Outstanding":
      return 3;

    case "Excellent":
      return 4;

    case "Masterpiece":
      return 5;

    default:
      return 1;
  }
}

String convertToCurrency(int price) {
  final oCcy = NumberFormat("###,###,###");
  return oCcy.format(price);
}

// DateTime convertStringToDateTime(String dateString) {
//   DateTime dateTime = DateTime.parse(dateString);
//   // DateTime now = DateTime.now();
  
//   // Duration duration = dateTime.difference(now);
  
//   return dateTime;
// }
