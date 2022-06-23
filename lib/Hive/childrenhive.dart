import 'package:hive/hive.dart';

part 'childrenhive.g.dart';

@HiveType(typeId: 4)
class ChildDetailsHiveModel extends HiveObject {
  @HiveField(0)
  String? childrenFirstname;

  @HiveField(1)
  String? childrenMiddlename;

  @HiveField(2)
  String? childrenLastname;

  @HiveField(3)
  String? childrengender;

  @HiveField(4)
  String? familydetailid;

  @HiveField(5)
  String? childrendob;

  ChildDetailsHiveModel({
    this.childrenFirstname,
    this.childrenMiddlename,
    this.childrenLastname,
    this.childrengender,
    this.familydetailid,
    this.childrendob,
  });
  Map<String, dynamic> toJson() => {
        "children_first_name_0": childrenFirstname,
        "children_last_name_0": childrenLastname,
        "children_middle_name_0": childrenMiddlename,
        "children_gender_0": 1,
      };
}
