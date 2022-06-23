import 'package:hive/hive.dart';

part 'househive.g.dart';

@HiveType(typeId: 13)
class Housemodel extends HiveObject {
  @HiveField(0)
  String? houseaddress;

  @HiveField(1)
  int? blocknumber;

  @HiveField(2)
  String? streetname;

  @HiveField(3)
  int? housenumber;

  @HiveField(4)
  String? toilettypeid;

  Housemodel({
    this.houseaddress,
    this.blocknumber,
    this.streetname,
    this.housenumber,
    this.toilettypeid,
  });
  Map<String, dynamic> toJson() => {
        "house_address": houseaddress,
        "block_number": blocknumber,
        "street_name": streetname,
        "house_number": housenumber,
        "toilet_type": toilettypeid,
      };
}
