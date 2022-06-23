import 'package:hive/hive.dart';

part 'addresshive.g.dart';

@HiveType(typeId: 1)
class AddressHiveModel extends HiveObject {
  @HiveField(1)
  String? tempProv;

  @HiveField(2)
  String? tempdistrict;

  @HiveField(3)
  String? tempMuni;

  @HiveField(4)
  int? tempward;

  @HiveField(5)
  String? tempstreettol;

  @HiveField(6)
  int? tempblockno;

  @HiveField(7)
  String? permProv;

  @HiveField(8)
  String? permdistrict;

  @HiveField(9)
  String? permMuni;

  @HiveField(10)
  int? permpward;

  @HiveField(11)
  String? permstreettol;

  @HiveField(12)
  int? permblocknoaddress;

  AddressHiveModel({
    this.tempProv,
    this.tempdistrict,
    this.tempMuni,
    this.tempward,
    this.tempstreettol,
    this.tempblockno,
    this.permProv,
    this.permdistrict,
    this.permMuni,
    this.permpward,
    this.permstreettol,
    this.permblocknoaddress,
  });
  Map<String, dynamic> toJson() => {
        "permanent_province": permProv,
        "permanent_district": permdistrict,
        "permanent_vdc_municipality": permMuni,
        "permanent_ward_no": permpward,
        "permanent_street": permstreettol,
        "temporary_province": tempProv,
        "temporary_district": tempdistrict,
        "temporary_vdc_municipality": tempMuni,
        "temporary_ward_no": tempward,
        "temporary_street": tempstreettol,
      };
}
