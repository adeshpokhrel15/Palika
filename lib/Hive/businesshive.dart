import 'package:hive/hive.dart';

part 'businesshive.g.dart';

@HiveType(typeId: 2)
class BusinessHiveModel extends HiveObject {
  @HiveField(0)
  String? businessorg;

  @HiveField(1)
  String? businesstypeid;

  @HiveField(2)
  String? orgname;

  @HiveField(3)
  int? totalinvestment;

  @HiveField(4)
  int? annualxpense;

  @HiveField(5)
  double? annualincomeorg;

  @HiveField(7)
  int? totalnostaff;

  @HiveField(8)
  String? businessarea;

  @HiveField(9)
  String? businessproduct;

  BusinessHiveModel({
    this.businessorg,
    this.businesstypeid,
    this.orgname,
    this.totalinvestment,
    this.annualincomeorg,
    this.annualxpense,
    this.totalnostaff,
    this.businessarea,
    this.businessproduct,
  });
  Map<String, dynamic> toJson() => {
        "business_type": businesstypeid,
        "total_investment": totalinvestment,
        "annual_business_income": annualxpense,
        "annual_business_expense": annualxpense,
        "total_staff_no": totalnostaff,
        "business_area": businessarea,
        "business_product": businessproduct,
      };
}
