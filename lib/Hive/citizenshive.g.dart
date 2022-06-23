// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizenshive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CitizensHiveModelAdapter extends TypeAdapter<CitizensHiveModel> {
  @override
  final int typeId = 5;

  @override
  CitizensHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CitizensHiveModel(
      citizenshipnumber: fields[0] as String?,
      issueddate: fields[1] as String?,
      issuedat: fields[2] as String?,
      verifiedby: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CitizensHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.citizenshipnumber)
      ..writeByte(1)
      ..write(obj.issueddate)
      ..writeByte(2)
      ..write(obj.issuedat)
      ..writeByte(3)
      ..write(obj.verifiedby);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CitizensHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
