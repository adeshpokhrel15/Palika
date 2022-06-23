import 'package:hive/hive.dart';

part 'citizenshive.g.dart';

@HiveType(typeId: 5)
class CitizensHiveModel extends HiveObject {
  @HiveField(0)
  String? citizenshipnumber;

  @HiveField(1)
  String? issueddate;

  @HiveField(2)
  String? issuedat;

  @HiveField(3)
  String? verifiedby;

  CitizensHiveModel({
    this.citizenshipnumber,
    this.issueddate,
    this.issuedat,
    this.verifiedby,
  });
  Map<String, dynamic> toJson() => {
        "citizenship_number": citizenshipnumber,
        "citizenship_issued_date": issueddate,
        "citizenship_issued_at": issuedat,
        "citizenship_verified_by": verifiedby,
      };
}
