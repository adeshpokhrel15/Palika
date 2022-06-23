// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'googlehive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoogleHiveModelAdapter extends TypeAdapter<GoogleHiveModel> {
  @override
  final int typeId = 11;

  @override
  GoogleHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GoogleHiveModel(
      latitude: fields[1] as double?,
      longitude: fields[0] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, GoogleHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.longitude)
      ..writeByte(1)
      ..write(obj.latitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoogleHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
