// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'search_result_normal.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class SeachResultNormalAdapter extends TypeAdapter<SearchResultNormal> {
//   @override
//   final int typeId = 999999999;

//   @override
//   SearchResultNormal read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return SearchResultNormal()
//       ..type = fields[0] as String?
//       ..name = fields[1] as String?
//       ..tier = fields[2] as String?
//       ..identifier = fields[3] as String?
//       ..icon = fields[4] as String?
//       ..itemPower = fields[5] as int?
//       ..typeId = fields[6] as int?
//       ..createdAt = fields[7] as int?
//       ..info = fields[8] == null ? '' : fields[8] as String;
//   }

//   @override
//   void write(BinaryWriter writer, SearchResultNormal obj) {
//     writer
//       ..writeByte(9)
//       ..writeByte(0)
//       ..write(obj.type)
//       ..writeByte(1)
//       ..write(obj.name)
//       ..writeByte(2)
//       ..write(obj.tier)
//       ..writeByte(3)
//       ..write(obj.identifier)
//       ..writeByte(4)
//       ..write(obj.icon)
//       ..writeByte(5)
//       ..write(obj.itemPower)
//       ..writeByte(6)
//       ..write(obj.typeId)
//       ..writeByte(7)
//       ..write(obj.createdAt)
//       ..writeByte(8)
//       ..write(obj.info);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is SeachResultNormalAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
