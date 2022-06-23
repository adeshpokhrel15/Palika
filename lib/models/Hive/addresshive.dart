import 'package:hive/hive.dart';

part 'addresshive.g.dart';

@HiveType(typeId: 1)
class AddressHiveModel extends HiveObject {
  @HiveField(0)
  String? tempProv;

  @HiveField(1)
  String? tempdistrict;

  @HiveField(2)
  String? tempMuni;

  @HiveField(3)
  int? tempward;

  @HiveField(4)
  String? tempstreettol;

  @HiveField(5)
  int? tempblockno;

  @HiveField(6)
  String? permProv;

  @HiveField(7)
  String? permdistrict;

  @HiveField(8)
  String? permMuni;

  @HiveField(9)
  int? permpward;

  @HiveField(10)
  String? permstreettol;

  @HiveField(11)
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
