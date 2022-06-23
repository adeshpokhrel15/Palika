import 'package:hive/hive.dart';

part 'childhlthhive.g.dart';

@HiveType(typeId: 3)
class ChildHealthHiveModel extends HiveObject {
  @HiveField(0)
  String? childrenbloodgroup;

  @HiveField(1)
  String? childrenbirthplace;

  @HiveField(2)
  int? chilrenbirthweight;

  @HiveField(3)
  String? childrenbirthcondition;

  @HiveField(4)
  bool? childrenisBCGvaccinated;

  @HiveField(5)
  bool? childrenisDPTHEPBvaccinated;

  @HiveField(6)
  bool? childrenisOPVvaccinated;

  @HiveField(7)
  bool? childrenisPCVvaccinated;

  @HiveField(8)
  bool? childrenisIPVvaccinated;

  @HiveField(9)
  bool? childrenisMRvaccinated;

  @HiveField(10)
  bool? childrenisJEvaccinated;

  @HiveField(11)
  bool? childrenisTDvaccinated;

  @HiveField(12)
  bool? childrenisgeneticdiseaseissue;

  @HiveField(13)
  String? childrengeneticdiseasedescription;

  @HiveField(14)
  bool? childreniscovidvaccinated;

  @HiveField(15)
  String? childrenvaccinedetails;

  @HiveField(16)
  String? childrenvacinedose;

  ChildHealthHiveModel({
    this.childrenbloodgroup,
    this.childrenbirthplace,
    this.chilrenbirthweight,
    this.childrenbirthcondition,
    this.childrenisBCGvaccinated,
    this.childrenisDPTHEPBvaccinated,
    this.childrenisOPVvaccinated,
    this.childrenisPCVvaccinated,
    this.childrenisIPVvaccinated,
    this.childrenisMRvaccinated,
    this.childrenisJEvaccinated,
    this.childrenisTDvaccinated,
    this.childrenisgeneticdiseaseissue,
    this.childrengeneticdiseasedescription,
    this.childreniscovidvaccinated,
    this.childrenvaccinedetails,
    this.childrenvacinedose,
  });
  Map<String, dynamic> toJson() => {
        "children_blood_group_0": childrenbloodgroup,
        "children_birth_place_0": childrenbirthplace,
        "children_birth_weight_0": chilrenbirthweight,
        "children_birth_condition_0": childrenbirthcondition,
        "children_vaccine_dose_0": childrenvacinedose,
        "children_vaccine_details_0": childrenvaccinedetails,
        "children_genetic_disease_description_0":
            childrengeneticdiseasedescription,
        "children_is_bcg_vaccinated_0": childrenisBCGvaccinated,
        "children_is_dpt_hep_b_vaccinated_0": childrenisDPTHEPBvaccinated,
        "children_is_pcv_vaccinated_0": childrenisPCVvaccinated,
        "children_is_ipv_vaccinated_0": childrenisIPVvaccinated,
        "children_is_je_vaccinated_0": childrenisJEvaccinated,
        "children_is_td_vaccinated_0": childrenisTDvaccinated,
      };
}
