// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresshive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddressHiveModelAdapter extends TypeAdapter<AddressHiveModel> {
  @override
  final int typeId = 1;

  @override
  AddressHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddressHiveModel(
      tempProv: fields[1] as String?,
      tempdistrict: fields[2] as String?,
      tempMuni: fields[3] as String?,
      tempward: fields[4] as int?,
      tempstreettol: fields[5] as String?,
      tempblockno: fields[6] as int?,
      permProv: fields[7] as String?,
      permdistrict: fields[8] as String?,
      permMuni: fields[9] as String?,
      permpward: fields[10] as int?,
      permstreettol: fields[11] as String?,
      permblocknoaddress: fields[12] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AddressHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(1)
      ..write(obj.tempProv)
      ..writeByte(2)
      ..write(obj.tempdistrict)
      ..writeByte(3)
      ..write(obj.tempMuni)
      ..writeByte(4)
      ..write(obj.tempward)
      ..writeByte(5)
      ..write(obj.tempstreettol)
      ..writeByte(6)
      ..write(obj.tempblockno)
      ..writeByte(7)
      ..write(obj.permProv)
      ..writeByte(8)
      ..write(obj.permdistrict)
      ..writeByte(9)
      ..write(obj.permMuni)
      ..writeByte(10)
      ..write(obj.permpward)
      ..writeByte(11)
      ..write(obj.permstreettol)
      ..writeByte(12)
      ..write(obj.permblocknoaddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
