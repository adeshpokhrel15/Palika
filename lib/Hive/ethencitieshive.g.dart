// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ethencitieshive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EthencitiesHiveModelAdapter extends TypeAdapter<EthencitiesHiveModel> {
  @override
  final int typeId = 6;

  @override
  EthencitiesHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EthencitiesHiveModel(
      nationalismandreligion: fields[0] as String?,
      nationality: fields[1] as String?,
      religion: fields[2] as String?,
      ethnicgroup: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, EthencitiesHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nationalismandreligion)
      ..writeByte(1)
      ..write(obj.nationality)
      ..writeByte(2)
      ..write(obj.religion)
      ..writeByte(3)
      ..write(obj.ethnicgroup);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EthencitiesHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
