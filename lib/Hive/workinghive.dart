import 'package:hive/hive.dart';

part 'workinghive.g.dart';

@HiveType(typeId: 16)
class WorkingHiveModel extends HiveObject {
  @HiveField(0)
  String? jobtype;

  @HiveField(1)
  String? joborganization;

  @HiveField(2)
  String? organizationaddress;

  @HiveField(3)
  double? annualincome;

  @HiveField(4)
  String? designation;

  WorkingHiveModel({
    this.jobtype,
    this.joborganization,
    this.organizationaddress,
    this.annualincome,
    this.designation,
  });
  Map<String, dynamic> toJson() => {
        "job_type": jobtype,
        "job_organization": joborganization,
        "organization_address": organizationaddress,
        "annual_income": annualincome,
        "designation": designation,
      };
}
