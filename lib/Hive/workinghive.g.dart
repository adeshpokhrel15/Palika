// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workinghive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkingHiveModelAdapter extends TypeAdapter<WorkingHiveModel> {
  @override
  final int typeId = 16;

  @override
  WorkingHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkingHiveModel(
      jobtype: fields[0] as String?,
      joborganization: fields[1] as String?,
      organizationaddress: fields[2] as String?,
      annualincome: fields[3] as double?,
      designation: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WorkingHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.jobtype)
      ..writeByte(1)
      ..write(obj.joborganization)
      ..writeByte(2)
      ..write(obj.organizationaddress)
      ..writeByte(3)
      ..write(obj.annualincome)
      ..writeByte(4)
      ..write(obj.designation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkingHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
