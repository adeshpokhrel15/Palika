// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homehive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeHiveModelAdapter extends TypeAdapter<HomeHiveModel> {
  @override
  final int typeId = 19;

  @override
  HomeHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeHiveModel(
      homeid: fields[0] as String?,
      homename: fields[1] as String?,
      homeaddress: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.homeid)
      ..writeByte(1)
      ..write(obj.homename)
      ..writeByte(2)
      ..write(obj.homeaddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
