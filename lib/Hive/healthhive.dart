import 'package:hive/hive.dart';

part 'healthhive.g.dart';

@HiveType(typeId: 12)
class HealthHiveModel extends HiveObject {
  @HiveField(0)
  String? healthbloodgroup;

  @HiveField(1)
  String? birthplace;

  @HiveField(2)
  int? birthweight;

  @HiveField(3)
  String? birthcondition;

  @HiveField(4)
  bool? isbelowvaccinated;

  @HiveField(5)
  bool? iscovidvaccinated;

  @HiveField(6)
  String? vaccinedetails;

  @HiveField(7)
  String? vacinedose;

  @HiveField(8)
  bool? isgeneticdiseaseissue;

  @HiveField(9)
  String? geneticdiseasedescription;

  HealthHiveModel({
    this.healthbloodgroup,
    this.birthplace,
    this.birthweight,
    this.birthcondition,
    this.isbelowvaccinated,
    this.iscovidvaccinated,
    this.vaccinedetails,
    this.vacinedose,
    this.isgeneticdiseaseissue,
    this.geneticdiseasedescription,
  });
  Map<String, dynamic> toJson() => {
        "blood_group": healthbloodgroup,
        "birth_place": birthplace,
        "birth_weight": birthweight,
        "birth_condition": birthcondition,
        "vaccine_dose": vacinedose,
        "vaccine_details": vaccinedetails,
        "genetic_disease_description": geneticdiseasedescription,
      };
}
