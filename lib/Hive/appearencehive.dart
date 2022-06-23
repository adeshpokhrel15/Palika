import 'package:hive/hive.dart';

part 'appearencehive.g.dart';

@HiveType(typeId: 1)
class AppearenceHiveModel extends HiveObject {
  @HiveField(0)
  String? skincolor;

  @HiveField(1)
  bool? ishandicap;

  @HiveField(2)
  String? handicappedtypeid;

  AppearenceHiveModel({
    this.skincolor,
    this.ishandicap,
    this.handicappedtypeid,
  });
  Map<String, dynamic> toJson() => {
        "skin_color": skincolor,
        "is_handicap": ishandicap,
        "handicapped_type_id": handicappedtypeid,
      };
}
