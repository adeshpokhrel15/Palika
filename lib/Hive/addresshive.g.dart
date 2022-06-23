// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresshive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddressHiveModelAdapter extends TypeAdapter<AddressHiveModel> {
  @override
  final int typeId = 0;

  @override
  AddressHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddressHiveModel(
      tempProv: fields[0] as String?,
      tempdistrict: fields[1] as String?,
      tempMuni: fields[2] as String?,
      tempward: fields[3] as int?,
      tempstreettol: fields[4] as String?,
      tempblockno: fields[5] as int?,
      permProv: fields[6] as String?,
      permdistrict: fields[7] as String?,
      permMuni: fields[8] as String?,
      permpward: fields[9] as int?,
      permstreettol: fields[10] as String?,
      permblocknoaddress: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AddressHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.tempProv)
      ..writeByte(1)
      ..write(obj.tempdistrict)
      ..writeByte(2)
      ..write(obj.tempMuni)
      ..writeByte(3)
      ..write(obj.tempward)
      ..writeByte(4)
      ..write(obj.tempstreettol)
      ..writeByte(5)
      ..write(obj.tempblockno)
      ..writeByte(6)
      ..write(obj.permProv)
      ..writeByte(7)
      ..write(obj.permdistrict)
      ..writeByte(8)
      ..write(obj.permMuni)
      ..writeByte(9)
      ..write(obj.permpward)
      ..writeByte(10)
      ..write(obj.permstreettol)
      ..writeByte(11)
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
