// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schoolhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SchoolHiveModelAdapter extends TypeAdapter<SchoolHiveModel> {
  @override
  final int typeId = 15;

  @override
  SchoolHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SchoolHiveModel(
      schoolname: fields[1] as String?,
      schooltypeid: fields[2] as String?,
      dresscode: fields[3] as String?,
      dresscondition: fields[4] as String?,
      childenschoolschemeid: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SchoolHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.schoolname)
      ..writeByte(2)
      ..write(obj.schooltypeid)
      ..writeByte(3)
      ..write(obj.dresscode)
      ..writeByte(4)
      ..write(obj.dresscondition)
      ..writeByte(5)
      ..write(obj.childenschoolschemeid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchoolHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
