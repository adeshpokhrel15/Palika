// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appearencehive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppearenceHiveModelAdapter extends TypeAdapter<AppearenceHiveModel> {
  @override
  final int typeId = 1;

  @override
  AppearenceHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppearenceHiveModel(
      skincolor: fields[0] as String?,
      ishandicap: fields[1] as bool?,
      handicappedtypeid: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppearenceHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.skincolor)
      ..writeByte(1)
      ..write(obj.ishandicap)
      ..writeByte(2)
      ..write(obj.handicappedtypeid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppearenceHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
