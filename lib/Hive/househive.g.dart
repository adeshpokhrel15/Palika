// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'househive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HousemodelAdapter extends TypeAdapter<Housemodel> {
  @override
  final int typeId = 13;

  @override
  Housemodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Housemodel(
      houseaddress: fields[0] as String?,
      blocknumber: fields[1] as int?,
      streetname: fields[2] as String?,
      housenumber: fields[3] as int?,
      toilettypeid: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Housemodel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.houseaddress)
      ..writeByte(1)
      ..write(obj.blocknumber)
      ..writeByte(2)
      ..write(obj.streetname)
      ..writeByte(3)
      ..write(obj.housenumber)
      ..writeByte(4)
      ..write(obj.toilettypeid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HousemodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
