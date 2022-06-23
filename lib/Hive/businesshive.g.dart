// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businesshive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BusinessHiveModelAdapter extends TypeAdapter<BusinessHiveModel> {
  @override
  final int typeId = 2;

  @override
  BusinessHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BusinessHiveModel(
      businessorg: fields[0] as String?,
      businesstypeid: fields[1] as String?,
      orgname: fields[2] as String?,
      totalinvestment: fields[3] as int?,
      annualincomeorg: fields[5] as double?,
      annualxpense: fields[4] as int?,
      totalnostaff: fields[7] as int?,
      businessarea: fields[8] as String?,
      businessproduct: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BusinessHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.businessorg)
      ..writeByte(1)
      ..write(obj.businesstypeid)
      ..writeByte(2)
      ..write(obj.orgname)
      ..writeByte(3)
      ..write(obj.totalinvestment)
      ..writeByte(4)
      ..write(obj.annualxpense)
      ..writeByte(5)
      ..write(obj.annualincomeorg)
      ..writeByte(7)
      ..write(obj.totalnostaff)
      ..writeByte(8)
      ..write(obj.businessarea)
      ..writeByte(9)
      ..write(obj.businessproduct);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusinessHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
