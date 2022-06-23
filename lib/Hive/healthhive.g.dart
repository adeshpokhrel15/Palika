// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'healthhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthHiveModelAdapter extends TypeAdapter<HealthHiveModel> {
  @override
  final int typeId = 12;

  @override
  HealthHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthHiveModel(
      healthbloodgroup: fields[0] as String?,
      birthplace: fields[1] as String?,
      birthweight: fields[2] as int?,
      birthcondition: fields[3] as String?,
      isbelowvaccinated: fields[4] as bool?,
      iscovidvaccinated: fields[5] as bool?,
      vaccinedetails: fields[6] as String?,
      vacinedose: fields[7] as String?,
      isgeneticdiseaseissue: fields[8] as bool?,
      geneticdiseasedescription: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HealthHiveModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.healthbloodgroup)
      ..writeByte(1)
      ..write(obj.birthplace)
      ..writeByte(2)
      ..write(obj.birthweight)
      ..writeByte(3)
      ..write(obj.birthcondition)
      ..writeByte(4)
      ..write(obj.isbelowvaccinated)
      ..writeByte(5)
      ..write(obj.iscovidvaccinated)
      ..writeByte(6)
      ..write(obj.vaccinedetails)
      ..writeByte(7)
      ..write(obj.vacinedose)
      ..writeByte(8)
      ..write(obj.isgeneticdiseaseissue)
      ..writeByte(9)
      ..write(obj.geneticdiseasedescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
