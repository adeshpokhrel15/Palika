// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childrenhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChildDetailsHiveModelAdapter extends TypeAdapter<ChildDetailsHiveModel> {
  @override
  final int typeId = 4;

  @override
  ChildDetailsHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChildDetailsHiveModel(
      childrenFirstname: fields[0] as String?,
      childrenMiddlename: fields[1] as String?,
      childrenLastname: fields[2] as String?,
      childrengender: fields[3] as String?,
      familydetailid: fields[4] as String?,
      childrendob: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChildDetailsHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.childrenFirstname)
      ..writeByte(1)
      ..write(obj.childrenMiddlename)
      ..writeByte(2)
      ..write(obj.childrenLastname)
      ..writeByte(3)
      ..write(obj.childrengender)
      ..writeByte(4)
      ..write(obj.familydetailid)
      ..writeByte(5)
      ..write(obj.childrendob);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildDetailsHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
