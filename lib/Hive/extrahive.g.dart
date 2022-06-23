// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extrahive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExtraHiveModelAdapter extends TypeAdapter<ExtraHiveModel> {
  @override
  final int typeId = 8;

  @override
  ExtraHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExtraHiveModel(
      durationofactivities: fields[3] as String?,
      interestedfieldid: fields[0] as String?,
      istakingtraining: fields[1] as bool?,
      professionalstatus: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ExtraHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.interestedfieldid)
      ..writeByte(1)
      ..write(obj.istakingtraining)
      ..writeByte(2)
      ..write(obj.professionalstatus)
      ..writeByte(3)
      ..write(obj.durationofactivities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExtraHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
