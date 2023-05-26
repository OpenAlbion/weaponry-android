// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeachResultVOAdapter extends TypeAdapter<SearchResultVO> {
  @override
  final int typeId = 1;

  @override
  SearchResultVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchResultVO();
  }

  @override
  void write(BinaryWriter writer, SearchResultVO obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeachResultVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultVO _$$_SearchResultVOFromJson(Map<String, dynamic> json) =>
    _$_SearchResultVO(
      type: json['type'] as String? ?? "",
      name: json['name'] as String? ?? "",
      tier: json['tier'] as String? ?? "",
      identifier: json['identifier'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      itemPower: json['item_power'] as int?,
      typeId: json['type_id'] as int?,
    );

Map<String, dynamic> _$$_SearchResultVOToJson(_$_SearchResultVO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'tier': instance.tier,
      'identifier': instance.identifier,
      'icon': instance.icon,
      'item_power': instance.itemPower,
      'type_id': instance.typeId,
    };
