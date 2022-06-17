import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

part 'formModel.g.dart';

@HiveType(typeId: 0)
class formModel extends HiveObject {
  @HiveField(0)
  String? firstname;

  @HiveField(1)
  int? age;

  @HiveField(2)
  String? gender;

  @HiveField(3)
  String? dateofbirthpersonal;

  @HiveField(4)
  String? handicappedidpersonal;

  @HiveField(5)
  int? mobilenumber;

  @HiveField(6)
  String? email;

  @HiveField(7)
  String? pannumber;

  @HiveField(8)
  String? bloodgroup;

  @HiveField(9)
  String? tempProv;

  @HiveField(10)
  String? tempdistrict;

  @HiveField(11)
  String? tempMuni;

  @HiveField(12)
  int? tempward;

  @HiveField(13)
  String? tempstreettol;

  @HiveField(14)
  int? tempblockno;

  @HiveField(15)
  String? permProv;

  @HiveField(16)
  String? permdistrict;

  @HiveField(17)
  String? permMuni;

  @HiveField(18)
  int? permpward;

  @HiveField(19)
  String? permstreettol;

  @HiveField(20)
  int? permblocknoaddress;

  @HiveField(21)
  String? fatherFirstName;

  @HiveField(22)
  String? motherFirstName;

  @HiveField(23)
  String? spouseFirstName;

  @HiveField(24)
  String? grandfatherFirstname;

  @HiveField(25)
  String? grandmotherFirstname;

  @HiveField(26)
  String? sonFirstname;

  @HiveField(27)
  String? daughterFirstname;

  @HiveField(28)
  int? totalson;

  @HiveField(29)
  int? totaldaughter;

  @HiveField(30)
  String? jobtype;

  @HiveField(31)
  String? joborganization;

  @HiveField(32)
  String? organizationaddress;

  @HiveField(33)
  double? annualincome;

  @HiveField(34)
  String? designation;

  @HiveField(35)
  String? nationalismandreligion;

  @HiveField(36)
  String? nationality;

  @HiveField(37)
  String? religion;

  @HiveField(38)
  String? ethnicgroup;

  @HiveField(39)
  int? totalmonthlyincome;

  @HiveField(40)
  String? incomesource;

  @HiveField(41)
  String? incomesourceman;

  @HiveField(42)
  String? expensecategory;

  @HiveField(43)
  double? totalexpense;

  @HiveField(44)
  bool? isbalanceddiet;

  @HiveField(45)
  String? foodconsumptiontiming;

  @HiveField(46)
  String? regularmealdescription;

  @HiveField(47)
  bool? isorganic;

  @HiveField(48)
  String? Houseaddress;

  @HiveField(49)
  int? Blocknumber;

  @HiveField(50)
  String? Streetname;

  @HiveField(51)
  int? Housenumber;

  @HiveField(52)
  String? toilettypeid;

  @HiveField(53)
  String? citizenshipnumber;

  @HiveField(54)
  String? issueddate;

  @HiveField(55)
  String? issuedat;

  @HiveField(56)
  String? verifiedby;

  @HiveField(57)
  String? businessorg;

  @HiveField(58)
  String? businesstypeid;

  @HiveField(59)
  String? orgname;

  @HiveField(60)
  int? totalinvestment;

  @HiveField(61)
  int? annualincomeorg;

  @HiveField(62)
  double? annualxpense;

  @HiveField(63)
  int? totalnostaff;

  @HiveField(64)
  String? businessarea;

  @HiveField(65)
  String? businessproduct;

  @HiveField(66)
  String? schoolname;

  @HiveField(67)
  String? schooltypeid;

  @HiveField(68)
  String? dresscode;

  @HiveField(69)
  String? dresscondition;

  @HiveField(70)
  String? childenschoolschemeid;

  @HiveField(71)
  String? skincolor;

  @HiveField(72)
  bool? ishandicap;

  @HiveField(73)
  String? handicappedtypeid;

  @HiveField(74)
  String? childrenFirstname;

  @HiveField(75)
  String? childrengender;

  @HiveField(76)
  String? familydetailid;

  @HiveField(77)
  String? childrendob;

  @HiveField(78)
  String? interestedfieldid;

  @HiveField(79)
  bool? istakingtraining;

  @HiveField(80)
  String? professionalstatus;

  @HiveField(81)
  String? durationofactivities;

  @HiveField(82)
  String? childrenbloodgroup;

  @HiveField(83)
  String? childrenbirthplace;

  @HiveField(84)
  int? chilrenbirthweight;

  @HiveField(85)
  String? childrenbirthcondition;

  @HiveField(86)
  bool? childrenisBCGvaccinated;

  @HiveField(87)
  bool? childrenisDPTHEPBvaccinated;

  @HiveField(88)
  bool? childrenisOPVvaccinated;

  @HiveField(89)
  bool? childrenisPCVvaccinated;

  @HiveField(90)
  bool? childrenisIPVvaccinated;

  @HiveField(91)
  bool? childrenisMRvaccinated;

  @HiveField(92)
  bool? childrenisJEvaccinated;

  @HiveField(93)
  bool? childrenisTDvaccinated;

  @HiveField(94)
  bool? childrenisgeneticdiseaseissue;

  @HiveField(95)
  String? childrengeneticdiseasedescription;

  @HiveField(96)
  bool? childreniscovidvaccinated;

  @HiveField(97)
  String? childrenvaccinedetails;

  @HiveField(98)
  String? childrenvacinedose;

  @HiveField(99)
  String? healthbloodgroup;

  @HiveField(100)
  String? birthplace;

  @HiveField(101)
  int? birthweight;

  @HiveField(102)
  String? birthcondition;

  @HiveField(103)
  bool? isbelowvaccinated;

  @HiveField(104)
  bool? iscovidvaccinated;

  @HiveField(105)
  String? vaccinedetails;

  @HiveField(106)
  String? vacinedose;

  @HiveField(107)
  bool? isgeneticdiseaseissue;

  @HiveField(108)
  String? geneticdiseasedescription;

  @HiveField(109)
  double? latitude;

  @HiveField(110)
  double? longitude;

  @HiveField(111)
  String? middlename;

  @HiveField(112)
  String? lastname;

  @HiveField(113)
  String? fatherMiddlename;

  @HiveField(114)
  String? fatherLastname;

  @HiveField(115)
  String? motherMiddlename;

  @HiveField(116)
  String? motherLastname;

  @HiveField(117)
  String? grandfatherMiddlename;

  @HiveField(118)
  String? grandfatherLastname;

  @HiveField(119)
  String? grandmotherMiddlename;

  @HiveField(120)
  String? grandmotherLastname;

  @HiveField(121)
  String? sonMiddlename;

  @HiveField(122)
  String? sonLastname;

  @HiveField(123)
  String? daughterMiddlename;

  @HiveField(124)
  String? daughterLastname;

  @HiveField(125)
  String? childrenMiddlename;

  @HiveField(126)
  String? childrenLastname;

  @HiveField(127)
  String? spouseMiddleName;

  @HiveField(128)
  String? spouseLastName;

  formModel({
    this.firstname,
    this.middlename,
    this.lastname,
    this.age,
    this.gender,
    this.dateofbirthpersonal,
    this.handicappedidpersonal,
    this.mobilenumber,
    this.email,
    this.pannumber,
    this.bloodgroup,
    this.tempProv,
    this.tempdistrict,
    this.tempMuni,
    this.tempward,
    this.tempstreettol,
    this.tempblockno,
    this.permProv,
    this.permdistrict,
    this.permMuni,
    this.permpward,
    this.permstreettol,
    this.permblocknoaddress,
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
    this.jobtype,
    this.joborganization,
    this.organizationaddress,
    this.annualincome,
    this.designation,
    this.nationalismandreligion,
    this.nationality,
    this.religion,
    this.ethnicgroup,
    this.totalmonthlyincome,
    this.incomesource,
    this.incomesourceman,
    this.expensecategory,
    this.totalexpense,
    this.isbalanceddiet,
    this.foodconsumptiontiming,
    this.regularmealdescription,
    this.isorganic,
    this.Houseaddress,
    this.Blocknumber,
    this.Streetname,
    this.Housenumber,
    this.toilettypeid,
    this.citizenshipnumber,
    this.issueddate,
    this.issuedat,
    this.verifiedby,
    this.businessorg,
    this.businesstypeid,
    this.orgname,
    this.totalinvestment,
    this.annualincomeorg,
    this.annualxpense,
    this.totalnostaff,
    this.businessarea,
    this.businessproduct,
    this.schoolname,
    this.schooltypeid,
    this.dresscode,
    this.dresscondition,
    this.childenschoolschemeid,
    this.skincolor,
    this.ishandicap,
    this.handicappedtypeid,
    this.childrenFirstname,
    this.childrenMiddlename,
    this.childrenLastname,
    this.childrengender,
    this.familydetailid,
    this.childrendob,
    this.interestedfieldid,
    this.istakingtraining,
    this.professionalstatus,
    this.durationofactivities,
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
    this.latitude,
    this.longitude,
  });
  Map<String, dynamic> toJson() => {
        "first_name": firstname,
        "middle_name": middlename,
        "last_name": lastname,

        "dob": dateofbirthpersonal,
        "gender": gender,
        "mobile_number": mobilenumber,
        "email": email,
        "pan_number": pannumber,

        "permanent_province": permProv,
        "permanent_district": permdistrict,
        "permanent_vdc_municipality": permMuni,
        "permanent_ward_no": permpward,
        "permanent_street": permstreettol,
        "temporary_province": tempProv,
        "temporary_district": tempdistrict,
        "temporary_vdc_municipality": tempMuni,
        "temporary_ward_no": tempward,
        "temporary_street": tempstreettol,

        "citizenship_number": citizenshipnumber,
        "citizenship_issued_date": issueddate,
        "citizenship_issued_at": issuedat,
        "citizenship_verified_by": verifiedby,

        "nationality": nationality,
        "religion": religion,
        "ethnic_group": ethnicgroup,

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

        "children_first_name_0": childrenFirstname,
        "children_last_name_0": childrenLastname,
        "children_middle_name_0": childrenMiddlename,
        "children_gender_0": 1,

        "children_school_name_0": schoolname,
        "children_dress_code_0": dresscode,
        "children_dress_condition_0": dresscondition,
        "children_school_type_0": schooltypeid,
        "children_school_scheme_0": childenschoolschemeid,

        "children_eca_interested_field_0": interestedfieldid,
        "children_is_taking_training_0": istakingtraining,
        "children_professional_status_0": professionalstatus,
        "children_duration_of_activities_0": durationofactivities,

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
        "is_below_five_vaccinated": isbelowvaccinated,
        "is_covid_vaccinated": iscovidvaccinated,
        "is_genetic_disease_issue": isgeneticdiseaseissue,
        "is_disabled": ishandicap,
        "is_balanced_diet": isbalanceddiet,
        "is_organic": isorganic,
        "job_type": jobtype,
        "job_organization": joborganization,
        "organization_address": organizationaddress,
        "annual_income": annualincome,
        "designation": designation,
        "business_type": businesstypeid,
        "total_investment": totalinvestment,
        "annual_business_income": annualincome,
        "annual_business_expense": annualxpense,
        "total_staff_no": totalnostaff,
        "business_area": businessarea,
        "business_product": businessproduct,
        "latitude": latitude,
        "longitude": longitude,
        "food_consumption_timing": foodconsumptiontiming,
        "regular_meal_description": regularmealdescription,
        "total_monthly_income": totalmonthlyincome,
        "income_source": incomesource,
        "income_source_main": incomesourceman,
        "expense_category": expensecategory,
        "total_expense": totalexpense,
        "blood_group": bloodgroup,
        "birth_place": birthplace,
        "birth_weight": birthweight,
        "birth_condition": birthcondition,
        "vaccine_dose": vacinedose,
        "vaccine_details": vaccinedetails,
        "genetic_disease_description": geneticdiseasedescription,
        "skin_color": skincolor,
        "house_address": Houseaddress,
        "block_number": Blocknumber,
        "street_name": Streetname,
        "house_number": Housenumber,
        "toilet_type": toilettypeid,

        // "children_first_name_1": childrenFirstName1,
        // "children_middle_name_1": childrenMiddleName1,
        // "children_last_name_1": childrenLastName1,
        // "children_dob_1": childrenDob1,
        // "children_gender_1": childrenGender1,

        // "children_school_name_1": childrenSchoolName1,
        // "children_dress_code_1": childrenDressCode1,
        // "children_dress_condition_1": childrenDressCondition1,
        // "children_school_type_1": childrenSchoolType1,
        // "children_school_scheme_1": childrenSchoolScheme1,
        // "children_eca_interested_field_1": childrenEcaInterestedField1,
        // "children_is_taking_training_1": childrenIsTakingTraining1,
        // "children_professional_status_1": childrenProfessionalStatus1,
        // "children_duration_of_activities_1": childrenDurationOfActivities1,
        // "children_blood_group_1": childrenBloodGroup1,
        // "children_birth_place_1": childrenBirthPlace1,
        // "children_birth_weight_1": childrenBirthWeight1,
        // "children_birth_condition_1": childrenBirthCondition1,
        // "children_vaccine_dose_1": childrenVaccineDose1,
        // "children_vaccine_details_1": childrenVaccineDetails1,
        //  "children_genetic_disease_description_1": childrenGeneticDiseaseDescription1,

//        "disability_type_nature": han,
//        "disability_type_severity": disabilityTypeSeverity,

        // "organization_name": ,

        // "children_is_genetic_disease_issue_0": childrenIsGeneticDiseaseIssue0,
        // "children_is_covid_vaccinated_0": childrenIsCovidVaccinated0,
        // "children_is_opv_vaccinated_0": childrenIsOpvVaccinated0,
        // "children_is_mr_vaccinated_0": childrenIsMrVaccinated0,
        // "children_is_genetic_disease_issue_1": childrenIsGeneticDiseaseIssue1,
        // "children_is_covid_vaccinated_1": childrenIsCovidVaccinated1,
        // "children_is_bcg_vaccinated_1": childrenIsBcgVaccinated1,
        // "children_is_dpt_hep_b_vaccinated_1": childrenIsDptHepBVaccinated1,
        // "children_is_opv_vaccinated_1": childrenIsOpvVaccinated1,
        // "children_is_pcv_vaccinated_1": childrenIsPcvVaccinated1,
        // "children_is_ipv_vaccinated_1": childrenIsIpvVaccinated1,
        // "children_is_mr_vaccinated_1": childrenIsMrVaccinated1,
        // "children_is_je_vaccinated_1": childrenIsJeVaccinated1,
        // "children_is_td_vaccinated_1": childrenIsTdVaccinated1,
      };
}
