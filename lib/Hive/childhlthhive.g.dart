// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childhlthhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChildHealthHiveModelAdapter extends TypeAdapter<ChildHealthHiveModel> {
  @override
  final int typeId = 3;

  @override
  ChildHealthHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChildHealthHiveModel(
      childrenbloodgroup: fields[0] as String?,
      childrenbirthplace: fields[1] as String?,
      chilrenbirthweight: fields[2] as int?,
      childrenbirthcondition: fields[3] as String?,
      childrenisBCGvaccinated: fields[4] as bool?,
      childrenisDPTHEPBvaccinated: fields[5] as bool?,
      childrenisOPVvaccinated: fields[6] as bool?,
      childrenisPCVvaccinated: fields[7] as bool?,
      childrenisIPVvaccinated: fields[8] as bool?,
      childrenisMRvaccinated: fields[9] as bool?,
      childrenisJEvaccinated: fields[10] as bool?,
      childrenisTDvaccinated: fields[11] as bool?,
      childrenisgeneticdiseaseissue: fields[12] as bool?,
      childrengeneticdiseasedescription: fields[13] as String?,
      childreniscovidvaccinated: fields[14] as bool?,
      childrenvaccinedetails: fields[15] as String?,
      childrenvacinedose: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChildHealthHiveModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.childrenbloodgroup)
      ..writeByte(1)
      ..write(obj.childrenbirthplace)
      ..writeByte(2)
      ..write(obj.chilrenbirthweight)
      ..writeByte(3)
      ..write(obj.childrenbirthcondition)
      ..writeByte(4)
      ..write(obj.childrenisBCGvaccinated)
      ..writeByte(5)
      ..write(obj.childrenisDPTHEPBvaccinated)
      ..writeByte(6)
      ..write(obj.childrenisOPVvaccinated)
      ..writeByte(7)
      ..write(obj.childrenisPCVvaccinated)
      ..writeByte(8)
      ..write(obj.childrenisIPVvaccinated)
      ..writeByte(9)
      ..write(obj.childrenisMRvaccinated)
      ..writeByte(10)
      ..write(obj.childrenisJEvaccinated)
      ..writeByte(11)
      ..write(obj.childrenisTDvaccinated)
      ..writeByte(12)
      ..write(obj.childrenisgeneticdiseaseissue)
      ..writeByte(13)
      ..write(obj.childrengeneticdiseasedescription)
      ..writeByte(14)
      ..write(obj.childreniscovidvaccinated)
      ..writeByte(15)
      ..write(obj.childrenvaccinedetails)
      ..writeByte(16)
      ..write(obj.childrenvacinedose);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildHealthHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
