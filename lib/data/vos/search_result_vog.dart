// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'search_result_vo.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class SeachResultVOAdapter extends TypeAdapter<SearchResultVO> {
//   @override
//   final int typeId = 1;

//   @override
//   SearchResultVO read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return SearchResultVO(
//       type: fields[0] as String,
//       name: fields[1] as String,
//       tier: fields[2] as String,
//       identifier: fields[3] as String,
//       icon: fields[4] as String,
//       itemPower: fields[5] as int?,
//       typeId: fields[6] as int?,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, SearchResultVO obj) {
//     writer
//       ..writeByte(7)
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
//       ..write(obj.typeId);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is SeachResultVOAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
