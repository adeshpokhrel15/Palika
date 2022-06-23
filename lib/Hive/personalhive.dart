import 'package:hive/hive.dart';

part 'personalhive.g.dart';

@HiveType(typeId: 0)
class PersonalHiveModel extends HiveObject {
  @HiveField(0)
  String? firstNamepersonal;

  @HiveField(1)
  String? middleNamepersonal;

  @HiveField(2)
  String? lastNamepersonal;

  @HiveField(3)
  int? agepersonal;

  @HiveField(4)
  String? genderpersonal;

  @HiveField(5)
  String? dateofbirthpersonal;

  @HiveField(6)
  String? handicappedIDPersonal;

  @HiveField(7)
  int? mobilenumberpersonal;

  @HiveField(8)
  String? emailpersonal;

  @HiveField(9)
  String? pannumberpersonal;

  @HiveField(10)
  String? bloodgroupPersonal;
  PersonalHiveModel({
    this.firstNamepersonal,
    this.middleNamepersonal,
    this.lastNamepersonal,
    this.agepersonal,
    this.genderpersonal,
    this.dateofbirthpersonal,
    this.handicappedIDPersonal,
    this.mobilenumberpersonal,
    this.emailpersonal,
    this.pannumberpersonal,
    this.bloodgroupPersonal,
  });
  Map<String, dynamic> toJson() => {
        "first_name": firstNamepersonal,
        "middle_name": middleNamepersonal,
        "last_name": lastNamepersonal,
        "dob": dateofbirthpersonal,
        "gender": genderpersonal,
        "mobile_number": mobilenumberpersonal,
        "email": emailpersonal,
        "pan_number": pannumberpersonal,
        "blood_group": bloodgroupPersonal,
      };
}
