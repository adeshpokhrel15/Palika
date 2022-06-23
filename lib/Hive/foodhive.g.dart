// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FoodmodelAdapter extends TypeAdapter<Foodmodel> {
  @override
  final int typeId = 10;

  @override
  Foodmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Foodmodel(
      isbalanceddiet: fields[0] as bool?,
      foodconsumptiontiming: fields[1] as String?,
      regularmealdescription: fields[2] as String?,
      isorganic: fields[3] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Foodmodel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.isbalanceddiet)
      ..writeByte(1)
      ..write(obj.foodconsumptiontiming)
      ..writeByte(2)
      ..write(obj.regularmealdescription)
      ..writeByte(3)
      ..write(obj.isorganic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
