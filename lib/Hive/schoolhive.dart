import 'package:hive/hive.dart';

part 'schoolhive.g.dart';

@HiveType(typeId: 15)
class SchoolHiveModel extends HiveObject {
  @HiveField(1)
  String? schoolname;

  @HiveField(2)
  String? schooltypeid;

  @HiveField(3)
  String? dresscode;

  @HiveField(4)
  String? dresscondition;

  @HiveField(5)
  String? childenschoolschemeid;

  SchoolHiveModel({
    this.schoolname,
    this.schooltypeid,
    this.dresscode,
    this.dresscondition,
    this.childenschoolschemeid,
  });
  Map<String, dynamic> toJson() => {
        "children_school_name_0": schoolname,
        "children_dress_code_0": dresscode,
        "children_dress_condition_0": dresscondition,
        "children_school_type_0": schooltypeid,
        "children_school_scheme_0": childenschoolschemeid,
      };
}
