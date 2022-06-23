// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonalHiveModelAdapter extends TypeAdapter<PersonalHiveModel> {
  @override
  final int typeId = 14;

  @override
  PersonalHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonalHiveModel(
      firstNamepersonal: fields[0] as String?,
      middleNamepersonal: fields[1] as String?,
      lastNamepersonal: fields[2] as String?,
      agepersonal: fields[3] as int?,
      genderpersonal: fields[4] as String?,
      dateofbirthpersonal: fields[5] as String?,
      handicappedIDPersonal: fields[6] as String?,
      mobilenumberpersonal: fields[7] as int?,
      emailpersonal: fields[8] as String?,
      pannumberpersonal: fields[9] as String?,
      bloodgroupPersonal: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PersonalHiveModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.firstNamepersonal)
      ..writeByte(1)
      ..write(obj.middleNamepersonal)
      ..writeByte(2)
      ..write(obj.lastNamepersonal)
      ..writeByte(3)
      ..write(obj.agepersonal)
      ..writeByte(4)
      ..write(obj.genderpersonal)
      ..writeByte(5)
      ..write(obj.dateofbirthpersonal)
      ..writeByte(6)
      ..write(obj.handicappedIDPersonal)
      ..writeByte(7)
      ..write(obj.mobilenumberpersonal)
      ..writeByte(8)
      ..write(obj.emailpersonal)
      ..writeByte(9)
      ..write(obj.pannumberpersonal)
      ..writeByte(10)
      ..write(obj.bloodgroupPersonal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonalHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
