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
    return SearchResultVO(
      type: fields[0] as String,
      name: fields[1] as String,
      tier: fields[2] as String,
      identifier: fields[3] as String,
      icon: fields[4] as String,
      itemPower: fields[5] as int?,
      typeId: fields[6] as int?,
      createdAt: fields[7] as int,
      info :fields[8] == null ? '' : fields[8] as String

    );
  }

  @override
  void write(BinaryWriter writer, SearchResultVO obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.tier)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.icon)
      ..writeByte(5)
      ..write(obj.itemPower)
      ..writeByte(6)
      ..write(obj.typeId)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.info);
  }
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
      createdAt: json['createdAt'] as int? ?? 0,
      info: json['info'] as String? ?? "",
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
      'createdAt': instance.createdAt,
      'info': instance.info,
    };
