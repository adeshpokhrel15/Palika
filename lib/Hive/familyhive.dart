import 'package:hive/hive.dart';

part 'familyhive.g.dart';

@HiveType(typeId: 9)
class FamilyModel extends HiveObject {
  @HiveField(0)
  String? fatherFirstName;

  @HiveField(1)
  String? fatherMiddlename;

  @HiveField(2)
  String? fatherLastname;

  @HiveField(3)
  String? motherFirstName;

  @HiveField(4)
  String? motherMiddlename;

  @HiveField(5)
  String? motherLastname;

  @HiveField(6)
  String? spouseFirstName;

  @HiveField(7)
  String? spouseMiddleName;

  @HiveField(8)
  String? spouseLastName;

  @HiveField(9)
  String? grandfatherFirstname;

  @HiveField(10)
  String? grandfatherMiddlename;

  @HiveField(11)
  String? grandfatherLastname;

  @HiveField(12)
  String? grandmotherFirstname;

  @HiveField(13)
  String? grandmotherMiddlename;

  @HiveField(14)
  String? grandmotherLastname;

  @HiveField(15)
  String? sonFirstname;

  @HiveField(16)
  String? sonMiddlename;

  @HiveField(17)
  String? sonLastname;

  @HiveField(18)
  String? daughterMiddlename;

  @HiveField(19)
  String? daughterLastname;

  @HiveField(20)
  String? daughterFirstname;

  @HiveField(21)
  int? totalson;

  @HiveField(22)
  int? totaldaughter;

  FamilyModel({
    this.fatherFirstName,
    this.fatherMiddlename,
    this.fatherLastname,
    this.motherFirstName,
    this.motherMiddlename,
    this.motherLastname,
    this.spouseFirstName,
    this.spouseMiddleName,
    this.spouseLastName,
    this.grandfatherFirstname,
    this.grandfatherMiddlename,
    this.grandfatherLastname,
    this.grandmotherFirstname,
    this.grandmotherMiddlename,
    this.grandmotherLastname,
    this.sonFirstname,
    this.daughterFirstname,
    this.sonMiddlename,
    this.daughterMiddlename,
    this.sonLastname,
    this.daughterLastname,
    this.totalson,
    this.totaldaughter,
  });
  Map<String, dynamic> toJson() => {
        "father_first_name": fatherFirstName,
        "father_middle_name": fatherMiddlename,
        "father_last_name": fatherLastname,
        "mother_first_name": motherFirstName,
        "mother_middle_name": motherMiddlename,
        "mother_last_name": motherLastname,
        "spouse_first_name": spouseFirstName,
        "spouse_middle_name": spouseMiddleName,
        "spouse_last_name": spouseLastName,
        "grand_father_first_name": grandfatherFirstname,
        "grand_father_middle_name": grandfatherMiddlename,
        "grand_father_last_name": grandfatherLastname,
        "grand_mother_first_name": grandmotherFirstname,
        "grand_mother_middle_name": grandmotherMiddlename,
        "grand_mother_last_name": grandmotherLastname,
      };
}
