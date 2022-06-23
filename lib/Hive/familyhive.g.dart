// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familyhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FamilyModelAdapter extends TypeAdapter<FamilyModel> {
  @override
  final int typeId = 9;

  @override
  FamilyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FamilyModel(
      fatherFirstName: fields[0] as String?,
      fatherMiddlename: fields[1] as String?,
      fatherLastname: fields[2] as String?,
      motherFirstName: fields[3] as String?,
      motherMiddlename: fields[4] as String?,
      motherLastname: fields[5] as String?,
      spouseFirstName: fields[6] as String?,
      spouseMiddleName: fields[7] as String?,
      spouseLastName: fields[8] as String?,
      grandfatherFirstname: fields[9] as String?,
      grandfatherMiddlename: fields[10] as String?,
      grandfatherLastname: fields[11] as String?,
      grandmotherFirstname: fields[12] as String?,
      grandmotherMiddlename: fields[13] as String?,
      grandmotherLastname: fields[14] as String?,
      sonFirstname: fields[15] as String?,
      daughterFirstname: fields[20] as String?,
      sonMiddlename: fields[16] as String?,
      daughterMiddlename: fields[18] as String?,
      sonLastname: fields[17] as String?,
      daughterLastname: fields[19] as String?,
      totalson: fields[21] as int?,
      totaldaughter: fields[22] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FamilyModel obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.fatherFirstName)
      ..writeByte(1)
      ..write(obj.fatherMiddlename)
      ..writeByte(2)
      ..write(obj.fatherLastname)
      ..writeByte(3)
      ..write(obj.motherFirstName)
      ..writeByte(4)
      ..write(obj.motherMiddlename)
      ..writeByte(5)
      ..write(obj.motherLastname)
      ..writeByte(6)
      ..write(obj.spouseFirstName)
      ..writeByte(7)
      ..write(obj.spouseMiddleName)
      ..writeByte(8)
      ..write(obj.spouseLastName)
      ..writeByte(9)
      ..write(obj.grandfatherFirstname)
      ..writeByte(10)
      ..write(obj.grandfatherMiddlename)
      ..writeByte(11)
      ..write(obj.grandfatherLastname)
      ..writeByte(12)
      ..write(obj.grandmotherFirstname)
      ..writeByte(13)
      ..write(obj.grandmotherMiddlename)
      ..writeByte(14)
      ..write(obj.grandmotherLastname)
      ..writeByte(15)
      ..write(obj.sonFirstname)
      ..writeByte(16)
      ..write(obj.sonMiddlename)
      ..writeByte(17)
      ..write(obj.sonLastname)
      ..writeByte(18)
      ..write(obj.daughterMiddlename)
      ..writeByte(19)
      ..write(obj.daughterLastname)
      ..writeByte(20)
      ..write(obj.daughterFirstname)
      ..writeByte(21)
      ..write(obj.totalson)
      ..writeByte(22)
      ..write(obj.totaldaughter);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FamilyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
