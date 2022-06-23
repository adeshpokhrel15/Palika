// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expensshive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenssHiveModelAdapter extends TypeAdapter<ExpenssHiveModel> {
  @override
  final int typeId = 7;

  @override
  ExpenssHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenssHiveModel(
      totalmonthlyincome: fields[0] as int?,
      incomesource: fields[1] as String?,
      incomesourceman: fields[2] as String?,
      expensecategory: fields[3] as String?,
      totalexpense: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, ExpenssHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.totalmonthlyincome)
      ..writeByte(1)
      ..write(obj.incomesource)
      ..writeByte(2)
      ..write(obj.incomesourceman)
      ..writeByte(3)
      ..write(obj.expensecategory)
      ..writeByte(4)
      ..write(obj.totalexpense);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenssHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
