// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:hive/hive.dart';

part 'finalModel.g.dart';

@HiveType(typeId: 20)
// ignore: camel_case_types
class FinalformModel extends HiveObject {
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
  FinalformModel({
    this.firstname,
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
    this.motherFirstName,
    this.spouseFirstName,
    this.grandfatherFirstname,
    this.grandmotherFirstname,
    this.sonFirstname,
    this.daughterFirstname,
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
    this.middlename,
    this.lastname,
    this.fatherMiddlename,
    this.fatherLastname,
    this.motherMiddlename,
    this.motherLastname,
    this.grandfatherMiddlename,
    this.grandfatherLastname,
    this.grandmotherMiddlename,
    this.grandmotherLastname,
    this.sonMiddlename,
    this.sonLastname,
    this.daughterMiddlename,
    this.daughterLastname,
    this.childrenMiddlename,
    this.childrenLastname,
    this.spouseMiddleName,
    this.spouseLastName,
  });

  FinalformModel copyWith({
    String? firstname,
    int? age,
    String? gender,
    String? dateofbirthpersonal,
    String? handicappedidpersonal,
    int? mobilenumber,
    String? email,
    String? pannumber,
    String? bloodgroup,
    String? tempProv,
    String? tempdistrict,
    String? tempMuni,
    int? tempward,
    String? tempstreettol,
    int? tempblockno,
    String? permProv,
    String? permdistrict,
    String? permMuni,
    int? permpward,
    String? permstreettol,
    int? permblocknoaddress,
    String? fatherFirstName,
    String? motherFirstName,
    String? spouseFirstName,
    String? grandfatherFirstname,
    String? grandmotherFirstname,
    String? sonFirstname,
    String? daughterFirstname,
    int? totalson,
    int? totaldaughter,
    String? jobtype,
    String? joborganization,
    String? organizationaddress,
    double? annualincome,
    String? designation,
    String? nationalismandreligion,
    String? nationality,
    String? religion,
    String? ethnicgroup,
    int? totalmonthlyincome,
    String? incomesource,
    String? incomesourceman,
    String? expensecategory,
    double? totalexpense,
    bool? isbalanceddiet,
    String? foodconsumptiontiming,
    String? regularmealdescription,
    bool? isorganic,
    String? Houseaddress,
    int? Blocknumber,
    String? Streetname,
    int? Housenumber,
    String? toilettypeid,
    String? citizenshipnumber,
    String? issueddate,
    String? issuedat,
    String? verifiedby,
    String? businessorg,
    String? businesstypeid,
    String? orgname,
    int? totalinvestment,
    int? annualincomeorg,
    double? annualxpense,
    int? totalnostaff,
    String? businessarea,
    String? businessproduct,
    String? schoolname,
    String? schooltypeid,
    String? dresscode,
    String? dresscondition,
    String? childenschoolschemeid,
    String? skincolor,
    bool? ishandicap,
    String? handicappedtypeid,
    String? childrenFirstname,
    String? childrengender,
    String? familydetailid,
    String? childrendob,
    String? interestedfieldid,
    bool? istakingtraining,
    String? professionalstatus,
    String? durationofactivities,
    String? childrenbloodgroup,
    String? childrenbirthplace,
    int? chilrenbirthweight,
    String? childrenbirthcondition,
    bool? childrenisBCGvaccinated,
    bool? childrenisDPTHEPBvaccinated,
    bool? childrenisOPVvaccinated,
    bool? childrenisPCVvaccinated,
    bool? childrenisIPVvaccinated,
    bool? childrenisMRvaccinated,
    bool? childrenisJEvaccinated,
    bool? childrenisTDvaccinated,
    bool? childrenisgeneticdiseaseissue,
    String? childrengeneticdiseasedescription,
    bool? childreniscovidvaccinated,
    String? childrenvaccinedetails,
    String? childrenvacinedose,
    String? healthbloodgroup,
    String? birthplace,
    int? birthweight,
    String? birthcondition,
    bool? isbelowvaccinated,
    bool? iscovidvaccinated,
    String? vaccinedetails,
    String? vacinedose,
    bool? isgeneticdiseaseissue,
    String? geneticdiseasedescription,
    double? latitude,
    double? longitude,
    String? middlename,
    String? lastname,
    String? fatherMiddlename,
    String? fatherLastname,
    String? motherMiddlename,
    String? motherLastname,
    String? grandfatherMiddlename,
    String? grandfatherLastname,
    String? grandmotherMiddlename,
    String? grandmotherLastname,
    String? sonMiddlename,
    String? sonLastname,
    String? daughterMiddlename,
    String? daughterLastname,
    String? childrenMiddlename,
    String? childrenLastname,
    String? spouseMiddleName,
    String? spouseLastName,
  }) {
    return FinalformModel(
      firstname: firstname ?? this.firstname,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      dateofbirthpersonal: dateofbirthpersonal ?? this.dateofbirthpersonal,
      handicappedidpersonal:
          handicappedidpersonal ?? this.handicappedidpersonal,
      mobilenumber: mobilenumber ?? this.mobilenumber,
      email: email ?? this.email,
      pannumber: pannumber ?? this.pannumber,
      bloodgroup: bloodgroup ?? this.bloodgroup,
      tempProv: tempProv ?? this.tempProv,
      tempdistrict: tempdistrict ?? this.tempdistrict,
      tempMuni: tempMuni ?? this.tempMuni,
      tempward: tempward ?? this.tempward,
      tempstreettol: tempstreettol ?? this.tempstreettol,
      tempblockno: tempblockno ?? this.tempblockno,
      permProv: permProv ?? this.permProv,
      permdistrict: permdistrict ?? this.permdistrict,
      permMuni: permMuni ?? this.permMuni,
      permpward: permpward ?? this.permpward,
      permstreettol: permstreettol ?? this.permstreettol,
      permblocknoaddress: permblocknoaddress ?? this.permblocknoaddress,
      fatherFirstName: fatherFirstName ?? this.fatherFirstName,
      motherFirstName: motherFirstName ?? this.motherFirstName,
      spouseFirstName: spouseFirstName ?? this.spouseFirstName,
      grandfatherFirstname: grandfatherFirstname ?? this.grandfatherFirstname,
      grandmotherFirstname: grandmotherFirstname ?? this.grandmotherFirstname,
      sonFirstname: sonFirstname ?? this.sonFirstname,
      daughterFirstname: daughterFirstname ?? this.daughterFirstname,
      totalson: totalson ?? this.totalson,
      totaldaughter: totaldaughter ?? this.totaldaughter,
      jobtype: jobtype ?? this.jobtype,
      joborganization: joborganization ?? this.joborganization,
      organizationaddress: organizationaddress ?? this.organizationaddress,
      annualincome: annualincome ?? this.annualincome,
      designation: designation ?? this.designation,
      nationalismandreligion:
          nationalismandreligion ?? this.nationalismandreligion,
      nationality: nationality ?? this.nationality,
      religion: religion ?? this.religion,
      ethnicgroup: ethnicgroup ?? this.ethnicgroup,
      totalmonthlyincome: totalmonthlyincome ?? this.totalmonthlyincome,
      incomesource: incomesource ?? this.incomesource,
      incomesourceman: incomesourceman ?? this.incomesourceman,
      expensecategory: expensecategory ?? this.expensecategory,
      totalexpense: totalexpense ?? this.totalexpense,
      isbalanceddiet: isbalanceddiet ?? this.isbalanceddiet,
      foodconsumptiontiming:
          foodconsumptiontiming ?? this.foodconsumptiontiming,
      regularmealdescription:
          regularmealdescription ?? this.regularmealdescription,
      isorganic: isorganic ?? this.isorganic,
      Houseaddress: Houseaddress ?? this.Houseaddress,
      Blocknumber: Blocknumber ?? this.Blocknumber,
      Streetname: Streetname ?? this.Streetname,
      Housenumber: Housenumber ?? this.Housenumber,
      toilettypeid: toilettypeid ?? this.toilettypeid,
      citizenshipnumber: citizenshipnumber ?? this.citizenshipnumber,
      issueddate: issueddate ?? this.issueddate,
      issuedat: issuedat ?? this.issuedat,
      verifiedby: verifiedby ?? this.verifiedby,
      businessorg: businessorg ?? this.businessorg,
      businesstypeid: businesstypeid ?? this.businesstypeid,
      orgname: orgname ?? this.orgname,
      totalinvestment: totalinvestment ?? this.totalinvestment,
      annualincomeorg: annualincomeorg ?? this.annualincomeorg,
      annualxpense: annualxpense ?? this.annualxpense,
      totalnostaff: totalnostaff ?? this.totalnostaff,
      businessarea: businessarea ?? this.businessarea,
      businessproduct: businessproduct ?? this.businessproduct,
      schoolname: schoolname ?? this.schoolname,
      schooltypeid: schooltypeid ?? this.schooltypeid,
      dresscode: dresscode ?? this.dresscode,
      dresscondition: dresscondition ?? this.dresscondition,
      childenschoolschemeid:
          childenschoolschemeid ?? this.childenschoolschemeid,
      skincolor: skincolor ?? this.skincolor,
      ishandicap: ishandicap ?? this.ishandicap,
      handicappedtypeid: handicappedtypeid ?? this.handicappedtypeid,
      childrenFirstname: childrenFirstname ?? this.childrenFirstname,
      childrengender: childrengender ?? this.childrengender,
      familydetailid: familydetailid ?? this.familydetailid,
      childrendob: childrendob ?? this.childrendob,
      interestedfieldid: interestedfieldid ?? this.interestedfieldid,
      istakingtraining: istakingtraining ?? this.istakingtraining,
      professionalstatus: professionalstatus ?? this.professionalstatus,
      durationofactivities: durationofactivities ?? this.durationofactivities,
      childrenbloodgroup: childrenbloodgroup ?? this.childrenbloodgroup,
      childrenbirthplace: childrenbirthplace ?? this.childrenbirthplace,
      chilrenbirthweight: chilrenbirthweight ?? this.chilrenbirthweight,
      childrenbirthcondition:
          childrenbirthcondition ?? this.childrenbirthcondition,
      childrenisBCGvaccinated:
          childrenisBCGvaccinated ?? this.childrenisBCGvaccinated,
      childrenisDPTHEPBvaccinated:
          childrenisDPTHEPBvaccinated ?? this.childrenisDPTHEPBvaccinated,
      childrenisOPVvaccinated:
          childrenisOPVvaccinated ?? this.childrenisOPVvaccinated,
      childrenisPCVvaccinated:
          childrenisPCVvaccinated ?? this.childrenisPCVvaccinated,
      childrenisIPVvaccinated:
          childrenisIPVvaccinated ?? this.childrenisIPVvaccinated,
      childrenisMRvaccinated:
          childrenisMRvaccinated ?? this.childrenisMRvaccinated,
      childrenisJEvaccinated:
          childrenisJEvaccinated ?? this.childrenisJEvaccinated,
      childrenisTDvaccinated:
          childrenisTDvaccinated ?? this.childrenisTDvaccinated,
      childrenisgeneticdiseaseissue:
          childrenisgeneticdiseaseissue ?? this.childrenisgeneticdiseaseissue,
      childrengeneticdiseasedescription: childrengeneticdiseasedescription ??
          this.childrengeneticdiseasedescription,
      childreniscovidvaccinated:
          childreniscovidvaccinated ?? this.childreniscovidvaccinated,
      childrenvaccinedetails:
          childrenvaccinedetails ?? this.childrenvaccinedetails,
      childrenvacinedose: childrenvacinedose ?? this.childrenvacinedose,
      healthbloodgroup: healthbloodgroup ?? this.healthbloodgroup,
      birthplace: birthplace ?? this.birthplace,
      birthweight: birthweight ?? this.birthweight,
      birthcondition: birthcondition ?? this.birthcondition,
      isbelowvaccinated: isbelowvaccinated ?? this.isbelowvaccinated,
      iscovidvaccinated: iscovidvaccinated ?? this.iscovidvaccinated,
      vaccinedetails: vaccinedetails ?? this.vaccinedetails,
      vacinedose: vacinedose ?? this.vacinedose,
      isgeneticdiseaseissue:
          isgeneticdiseaseissue ?? this.isgeneticdiseaseissue,
      geneticdiseasedescription:
          geneticdiseasedescription ?? this.geneticdiseasedescription,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      middlename: middlename ?? this.middlename,
      lastname: lastname ?? this.lastname,
      fatherMiddlename: fatherMiddlename ?? this.fatherMiddlename,
      fatherLastname: fatherLastname ?? this.fatherLastname,
      motherMiddlename: motherMiddlename ?? this.motherMiddlename,
      motherLastname: motherLastname ?? this.motherLastname,
      grandfatherMiddlename:
          grandfatherMiddlename ?? this.grandfatherMiddlename,
      grandfatherLastname: grandfatherLastname ?? this.grandfatherLastname,
      grandmotherMiddlename:
          grandmotherMiddlename ?? this.grandmotherMiddlename,
      grandmotherLastname: grandmotherLastname ?? this.grandmotherLastname,
      sonMiddlename: sonMiddlename ?? this.sonMiddlename,
      sonLastname: sonLastname ?? this.sonLastname,
      daughterMiddlename: daughterMiddlename ?? this.daughterMiddlename,
      daughterLastname: daughterLastname ?? this.daughterLastname,
      childrenMiddlename: childrenMiddlename ?? this.childrenMiddlename,
      childrenLastname: childrenLastname ?? this.childrenLastname,
      spouseMiddleName: spouseMiddleName ?? this.spouseMiddleName,
      spouseLastName: spouseLastName ?? this.spouseLastName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstname': firstname,
      'age': age,
      'gender': gender,
      'dateofbirthpersonal': dateofbirthpersonal,
      'handicappedidpersonal': handicappedidpersonal,
      'mobilenumber': mobilenumber,
      'email': email,
      'pannumber': pannumber,
      'bloodgroup': bloodgroup,
      'tempProv': tempProv,
      'tempdistrict': tempdistrict,
      'tempMuni': tempMuni,
      'tempward': tempward,
      'tempstreettol': tempstreettol,
      'tempblockno': tempblockno,
      'permProv': permProv,
      'permdistrict': permdistrict,
      'permMuni': permMuni,
      'permpward': permpward,
      'permstreettol': permstreettol,
      'permblocknoaddress': permblocknoaddress,
      'fatherFirstName': fatherFirstName,
      'motherFirstName': motherFirstName,
      'spouseFirstName': spouseFirstName,
      'grandfatherFirstname': grandfatherFirstname,
      'grandmotherFirstname': grandmotherFirstname,
      'sonFirstname': sonFirstname,
      'daughterFirstname': daughterFirstname,
      'totalson': totalson,
      'totaldaughter': totaldaughter,
      'jobtype': jobtype,
      'joborganization': joborganization,
      'organizationaddress': organizationaddress,
      'annualincome': annualincome,
      'designation': designation,
      'nationalismandreligion': nationalismandreligion,
      'nationality': nationality,
      'religion': religion,
      'ethnicgroup': ethnicgroup,
      'totalmonthlyincome': totalmonthlyincome,
      'incomesource': incomesource,
      'incomesourceman': incomesourceman,
      'expensecategory': expensecategory,
      'totalexpense': totalexpense,
      'isbalanceddiet': isbalanceddiet,
      'foodconsumptiontiming': foodconsumptiontiming,
      'regularmealdescription': regularmealdescription,
      'isorganic': isorganic,
      'Houseaddress': Houseaddress,
      'Blocknumber': Blocknumber,
      'Streetname': Streetname,
      'Housenumber': Housenumber,
      'toilettypeid': toilettypeid,
      'citizenshipnumber': citizenshipnumber,
      'issueddate': issueddate,
      'issuedat': issuedat,
      'verifiedby': verifiedby,
      'businessorg': businessorg,
      'businesstypeid': businesstypeid,
      'orgname': orgname,
      'totalinvestment': totalinvestment,
      'annualincomeorg': annualincomeorg,
      'annualxpense': annualxpense,
      'totalnostaff': totalnostaff,
      'businessarea': businessarea,
      'businessproduct': businessproduct,
      'schoolname': schoolname,
      'schooltypeid': schooltypeid,
      'dresscode': dresscode,
      'dresscondition': dresscondition,
      'childenschoolschemeid': childenschoolschemeid,
      'skincolor': skincolor,
      'ishandicap': ishandicap,
      'handicappedtypeid': handicappedtypeid,
      'childrenFirstname': childrenFirstname,
      'childrengender': childrengender,
      'familydetailid': familydetailid,
      'childrendob': childrendob,
      'interestedfieldid': interestedfieldid,
      'istakingtraining': istakingtraining,
      'professionalstatus': professionalstatus,
      'durationofactivities': durationofactivities,
      'childrenbloodgroup': childrenbloodgroup,
      'childrenbirthplace': childrenbirthplace,
      'chilrenbirthweight': chilrenbirthweight,
      'childrenbirthcondition': childrenbirthcondition,
      'childrenisBCGvaccinated': childrenisBCGvaccinated,
      'childrenisDPTHEPBvaccinated': childrenisDPTHEPBvaccinated,
      'childrenisOPVvaccinated': childrenisOPVvaccinated,
      'childrenisPCVvaccinated': childrenisPCVvaccinated,
      'childrenisIPVvaccinated': childrenisIPVvaccinated,
      'childrenisMRvaccinated': childrenisMRvaccinated,
      'childrenisJEvaccinated': childrenisJEvaccinated,
      'childrenisTDvaccinated': childrenisTDvaccinated,
      'childrenisgeneticdiseaseissue': childrenisgeneticdiseaseissue,
      'childrengeneticdiseasedescription': childrengeneticdiseasedescription,
      'childreniscovidvaccinated': childreniscovidvaccinated,
      'childrenvaccinedetails': childrenvaccinedetails,
      'childrenvacinedose': childrenvacinedose,
      'healthbloodgroup': healthbloodgroup,
      'birthplace': birthplace,
      'birthweight': birthweight,
      'birthcondition': birthcondition,
      'isbelowvaccinated': isbelowvaccinated,
      'iscovidvaccinated': iscovidvaccinated,
      'vaccinedetails': vaccinedetails,
      'vacinedose': vacinedose,
      'isgeneticdiseaseissue': isgeneticdiseaseissue,
      'geneticdiseasedescription': geneticdiseasedescription,
      'latitude': latitude,
      'longitude': longitude,
      'middlename': middlename,
      'lastname': lastname,
      'fatherMiddlename': fatherMiddlename,
      'fatherLastname': fatherLastname,
      'motherMiddlename': motherMiddlename,
      'motherLastname': motherLastname,
      'grandfatherMiddlename': grandfatherMiddlename,
      'grandfatherLastname': grandfatherLastname,
      'grandmotherMiddlename': grandmotherMiddlename,
      'grandmotherLastname': grandmotherLastname,
      'sonMiddlename': sonMiddlename,
      'sonLastname': sonLastname,
      'daughterMiddlename': daughterMiddlename,
      'daughterLastname': daughterLastname,
      'childrenMiddlename': childrenMiddlename,
      'childrenLastname': childrenLastname,
      'spouseMiddleName': spouseMiddleName,
      'spouseLastName': spouseLastName,
    };
  }

  factory FinalformModel.fromMap(Map<String, dynamic> map) {
    return FinalformModel(
      firstname: map['firstname'] != null ? map['firstname'] as String : null,
      age: map['age'] != null ? map['age'] as int : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      dateofbirthpersonal: map['dateofbirthpersonal'] != null
          ? map['dateofbirthpersonal'] as String
          : null,
      handicappedidpersonal: map['handicappedidpersonal'] != null
          ? map['handicappedidpersonal'] as String
          : null,
      mobilenumber:
          map['mobilenumber'] != null ? map['mobilenumber'] as int : null,
      email: map['email'] != null ? map['email'] as String : null,
      pannumber: map['pannumber'] != null ? map['pannumber'] as String : null,
      bloodgroup:
          map['bloodgroup'] != null ? map['bloodgroup'] as String : null,
      tempProv: map['tempProv'] != null ? map['tempProv'] as String : null,
      tempdistrict:
          map['tempdistrict'] != null ? map['tempdistrict'] as String : null,
      tempMuni: map['tempMuni'] != null ? map['tempMuni'] as String : null,
      tempward: map['tempward'] != null ? map['tempward'] as int : null,
      tempstreettol:
          map['tempstreettol'] != null ? map['tempstreettol'] as String : null,
      tempblockno:
          map['tempblockno'] != null ? map['tempblockno'] as int : null,
      permProv: map['permProv'] != null ? map['permProv'] as String : null,
      permdistrict:
          map['permdistrict'] != null ? map['permdistrict'] as String : null,
      permMuni: map['permMuni'] != null ? map['permMuni'] as String : null,
      permpward: map['permpward'] != null ? map['permpward'] as int : null,
      permstreettol:
          map['permstreettol'] != null ? map['permstreettol'] as String : null,
      permblocknoaddress: map['permblocknoaddress'] != null
          ? map['permblocknoaddress'] as int
          : null,
      fatherFirstName: map['fatherFirstName'] != null
          ? map['fatherFirstName'] as String
          : null,
      motherFirstName: map['motherFirstName'] != null
          ? map['motherFirstName'] as String
          : null,
      spouseFirstName: map['spouseFirstName'] != null
          ? map['spouseFirstName'] as String
          : null,
      grandfatherFirstname: map['grandfatherFirstname'] != null
          ? map['grandfatherFirstname'] as String
          : null,
      grandmotherFirstname: map['grandmotherFirstname'] != null
          ? map['grandmotherFirstname'] as String
          : null,
      sonFirstname:
          map['sonFirstname'] != null ? map['sonFirstname'] as String : null,
      daughterFirstname: map['daughterFirstname'] != null
          ? map['daughterFirstname'] as String
          : null,
      totalson: map['totalson'] != null ? map['totalson'] as int : null,
      totaldaughter:
          map['totaldaughter'] != null ? map['totaldaughter'] as int : null,
      jobtype: map['jobtype'] != null ? map['jobtype'] as String : null,
      joborganization: map['joborganization'] != null
          ? map['joborganization'] as String
          : null,
      organizationaddress: map['organizationaddress'] != null
          ? map['organizationaddress'] as String
          : null,
      annualincome:
          map['annualincome'] != null ? map['annualincome'] as double : null,
      designation:
          map['designation'] != null ? map['designation'] as String : null,
      nationalismandreligion: map['nationalismandreligion'] != null
          ? map['nationalismandreligion'] as String
          : null,
      nationality:
          map['nationality'] != null ? map['nationality'] as String : null,
      religion: map['religion'] != null ? map['religion'] as String : null,
      ethnicgroup:
          map['ethnicgroup'] != null ? map['ethnicgroup'] as String : null,
      totalmonthlyincome: map['totalmonthlyincome'] != null
          ? map['totalmonthlyincome'] as int
          : null,
      incomesource:
          map['incomesource'] != null ? map['incomesource'] as String : null,
      incomesourceman: map['incomesourceman'] != null
          ? map['incomesourceman'] as String
          : null,
      expensecategory: map['expensecategory'] != null
          ? map['expensecategory'] as String
          : null,
      totalexpense:
          map['totalexpense'] != null ? map['totalexpense'] as double : null,
      isbalanceddiet:
          map['isbalanceddiet'] != null ? map['isbalanceddiet'] as bool : null,
      foodconsumptiontiming: map['foodconsumptiontiming'] != null
          ? map['foodconsumptiontiming'] as String
          : null,
      regularmealdescription: map['regularmealdescription'] != null
          ? map['regularmealdescription'] as String
          : null,
      isorganic: map['isorganic'] != null ? map['isorganic'] as bool : null,
      Houseaddress:
          map['Houseaddress'] != null ? map['Houseaddress'] as String : null,
      Blocknumber:
          map['Blocknumber'] != null ? map['Blocknumber'] as int : null,
      Streetname:
          map['Streetname'] != null ? map['Streetname'] as String : null,
      Housenumber:
          map['Housenumber'] != null ? map['Housenumber'] as int : null,
      toilettypeid:
          map['toilettypeid'] != null ? map['toilettypeid'] as String : null,
      citizenshipnumber: map['citizenshipnumber'] != null
          ? map['citizenshipnumber'] as String
          : null,
      issueddate:
          map['issueddate'] != null ? map['issueddate'] as String : null,
      issuedat: map['issuedat'] != null ? map['issuedat'] as String : null,
      verifiedby:
          map['verifiedby'] != null ? map['verifiedby'] as String : null,
      businessorg:
          map['businessorg'] != null ? map['businessorg'] as String : null,
      businesstypeid: map['businesstypeid'] != null
          ? map['businesstypeid'] as String
          : null,
      orgname: map['orgname'] != null ? map['orgname'] as String : null,
      totalinvestment:
          map['totalinvestment'] != null ? map['totalinvestment'] as int : null,
      annualincomeorg:
          map['annualincomeorg'] != null ? map['annualincomeorg'] as int : null,
      annualxpense:
          map['annualxpense'] != null ? map['annualxpense'] as double : null,
      totalnostaff:
          map['totalnostaff'] != null ? map['totalnostaff'] as int : null,
      businessarea:
          map['businessarea'] != null ? map['businessarea'] as String : null,
      businessproduct: map['businessproduct'] != null
          ? map['businessproduct'] as String
          : null,
      schoolname:
          map['schoolname'] != null ? map['schoolname'] as String : null,
      schooltypeid:
          map['schooltypeid'] != null ? map['schooltypeid'] as String : null,
      dresscode: map['dresscode'] != null ? map['dresscode'] as String : null,
      dresscondition: map['dresscondition'] != null
          ? map['dresscondition'] as String
          : null,
      childenschoolschemeid: map['childenschoolschemeid'] != null
          ? map['childenschoolschemeid'] as String
          : null,
      skincolor: map['skincolor'] != null ? map['skincolor'] as String : null,
      ishandicap: map['ishandicap'] != null ? map['ishandicap'] as bool : null,
      handicappedtypeid: map['handicappedtypeid'] != null
          ? map['handicappedtypeid'] as String
          : null,
      childrenFirstname: map['childrenFirstname'] != null
          ? map['childrenFirstname'] as String
          : null,
      childrengender: map['childrengender'] != null
          ? map['childrengender'] as String
          : null,
      familydetailid: map['familydetailid'] != null
          ? map['familydetailid'] as String
          : null,
      childrendob:
          map['childrendob'] != null ? map['childrendob'] as String : null,
      interestedfieldid: map['interestedfieldid'] != null
          ? map['interestedfieldid'] as String
          : null,
      istakingtraining: map['istakingtraining'] != null
          ? map['istakingtraining'] as bool
          : null,
      professionalstatus: map['professionalstatus'] != null
          ? map['professionalstatus'] as String
          : null,
      durationofactivities: map['durationofactivities'] != null
          ? map['durationofactivities'] as String
          : null,
      childrenbloodgroup: map['childrenbloodgroup'] != null
          ? map['childrenbloodgroup'] as String
          : null,
      childrenbirthplace: map['childrenbirthplace'] != null
          ? map['childrenbirthplace'] as String
          : null,
      chilrenbirthweight: map['chilrenbirthweight'] != null
          ? map['chilrenbirthweight'] as int
          : null,
      childrenbirthcondition: map['childrenbirthcondition'] != null
          ? map['childrenbirthcondition'] as String
          : null,
      childrenisBCGvaccinated: map['childrenisBCGvaccinated'] != null
          ? map['childrenisBCGvaccinated'] as bool
          : null,
      childrenisDPTHEPBvaccinated: map['childrenisDPTHEPBvaccinated'] != null
          ? map['childrenisDPTHEPBvaccinated'] as bool
          : null,
      childrenisOPVvaccinated: map['childrenisOPVvaccinated'] != null
          ? map['childrenisOPVvaccinated'] as bool
          : null,
      childrenisPCVvaccinated: map['childrenisPCVvaccinated'] != null
          ? map['childrenisPCVvaccinated'] as bool
          : null,
      childrenisIPVvaccinated: map['childrenisIPVvaccinated'] != null
          ? map['childrenisIPVvaccinated'] as bool
          : null,
      childrenisMRvaccinated: map['childrenisMRvaccinated'] != null
          ? map['childrenisMRvaccinated'] as bool
          : null,
      childrenisJEvaccinated: map['childrenisJEvaccinated'] != null
          ? map['childrenisJEvaccinated'] as bool
          : null,
      childrenisTDvaccinated: map['childrenisTDvaccinated'] != null
          ? map['childrenisTDvaccinated'] as bool
          : null,
      childrenisgeneticdiseaseissue:
          map['childrenisgeneticdiseaseissue'] != null
              ? map['childrenisgeneticdiseaseissue'] as bool
              : null,
      childrengeneticdiseasedescription:
          map['childrengeneticdiseasedescription'] != null
              ? map['childrengeneticdiseasedescription'] as String
              : null,
      childreniscovidvaccinated: map['childreniscovidvaccinated'] != null
          ? map['childreniscovidvaccinated'] as bool
          : null,
      childrenvaccinedetails: map['childrenvaccinedetails'] != null
          ? map['childrenvaccinedetails'] as String
          : null,
      childrenvacinedose: map['childrenvacinedose'] != null
          ? map['childrenvacinedose'] as String
          : null,
      healthbloodgroup: map['healthbloodgroup'] != null
          ? map['healthbloodgroup'] as String
          : null,
      birthplace:
          map['birthplace'] != null ? map['birthplace'] as String : null,
      birthweight:
          map['birthweight'] != null ? map['birthweight'] as int : null,
      birthcondition: map['birthcondition'] != null
          ? map['birthcondition'] as String
          : null,
      isbelowvaccinated: map['isbelowvaccinated'] != null
          ? map['isbelowvaccinated'] as bool
          : null,
      iscovidvaccinated: map['iscovidvaccinated'] != null
          ? map['iscovidvaccinated'] as bool
          : null,
      vaccinedetails: map['vaccinedetails'] != null
          ? map['vaccinedetails'] as String
          : null,
      vacinedose:
          map['vacinedose'] != null ? map['vacinedose'] as String : null,
      isgeneticdiseaseissue: map['isgeneticdiseaseissue'] != null
          ? map['isgeneticdiseaseissue'] as bool
          : null,
      geneticdiseasedescription: map['geneticdiseasedescription'] != null
          ? map['geneticdiseasedescription'] as String
          : null,
      latitude: map['latitude'] != null ? map['latitude'] as double : null,
      longitude: map['longitude'] != null ? map['longitude'] as double : null,
      middlename:
          map['middlename'] != null ? map['middlename'] as String : null,
      lastname: map['lastname'] != null ? map['lastname'] as String : null,
      fatherMiddlename: map['fatherMiddlename'] != null
          ? map['fatherMiddlename'] as String
          : null,
      fatherLastname: map['fatherLastname'] != null
          ? map['fatherLastname'] as String
          : null,
      motherMiddlename: map['motherMiddlename'] != null
          ? map['motherMiddlename'] as String
          : null,
      motherLastname: map['motherLastname'] != null
          ? map['motherLastname'] as String
          : null,
      grandfatherMiddlename: map['grandfatherMiddlename'] != null
          ? map['grandfatherMiddlename'] as String
          : null,
      grandfatherLastname: map['grandfatherLastname'] != null
          ? map['grandfatherLastname'] as String
          : null,
      grandmotherMiddlename: map['grandmotherMiddlename'] != null
          ? map['grandmotherMiddlename'] as String
          : null,
      grandmotherLastname: map['grandmotherLastname'] != null
          ? map['grandmotherLastname'] as String
          : null,
      sonMiddlename:
          map['sonMiddlename'] != null ? map['sonMiddlename'] as String : null,
      sonLastname:
          map['sonLastname'] != null ? map['sonLastname'] as String : null,
      daughterMiddlename: map['daughterMiddlename'] != null
          ? map['daughterMiddlename'] as String
          : null,
      daughterLastname: map['daughterLastname'] != null
          ? map['daughterLastname'] as String
          : null,
      childrenMiddlename: map['childrenMiddlename'] != null
          ? map['childrenMiddlename'] as String
          : null,
      childrenLastname: map['childrenLastname'] != null
          ? map['childrenLastname'] as String
          : null,
      spouseMiddleName: map['spouseMiddleName'] != null
          ? map['spouseMiddleName'] as String
          : null,
      spouseLastName: map['spouseLastName'] != null
          ? map['spouseLastName'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FinalformModel.fromJson(String source) =>
      FinalformModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'formModel(firstname: $firstname, age: $age, gender: $gender, dateofbirthpersonal: $dateofbirthpersonal, handicappedidpersonal: $handicappedidpersonal, mobilenumber: $mobilenumber, email: $email, pannumber: $pannumber, bloodgroup: $bloodgroup, tempProv: $tempProv, tempdistrict: $tempdistrict, tempMuni: $tempMuni, tempward: $tempward, tempstreettol: $tempstreettol, tempblockno: $tempblockno, permProv: $permProv, permdistrict: $permdistrict, permMuni: $permMuni, permpward: $permpward, permstreettol: $permstreettol, permblocknoaddress: $permblocknoaddress, fatherFirstName: $fatherFirstName, motherFirstName: $motherFirstName, spouseFirstName: $spouseFirstName, grandfatherFirstname: $grandfatherFirstname, grandmotherFirstname: $grandmotherFirstname, sonFirstname: $sonFirstname, daughterFirstname: $daughterFirstname, totalson: $totalson, totaldaughter: $totaldaughter, jobtype: $jobtype, joborganization: $joborganization, organizationaddress: $organizationaddress, annualincome: $annualincome, designation: $designation, nationalismandreligion: $nationalismandreligion, nationality: $nationality, religion: $religion, ethnicgroup: $ethnicgroup, totalmonthlyincome: $totalmonthlyincome, incomesource: $incomesource, incomesourceman: $incomesourceman, expensecategory: $expensecategory, totalexpense: $totalexpense, isbalanceddiet: $isbalanceddiet, foodconsumptiontiming: $foodconsumptiontiming, regularmealdescription: $regularmealdescription, isorganic: $isorganic, Houseaddress: $Houseaddress, Blocknumber: $Blocknumber, Streetname: $Streetname, Housenumber: $Housenumber, toilettypeid: $toilettypeid, citizenshipnumber: $citizenshipnumber, issueddate: $issueddate, issuedat: $issuedat, verifiedby: $verifiedby, businessorg: $businessorg, businesstypeid: $businesstypeid, orgname: $orgname, totalinvestment: $totalinvestment, annualincomeorg: $annualincomeorg, annualxpense: $annualxpense, totalnostaff: $totalnostaff, businessarea: $businessarea, businessproduct: $businessproduct, schoolname: $schoolname, schooltypeid: $schooltypeid, dresscode: $dresscode, dresscondition: $dresscondition, childenschoolschemeid: $childenschoolschemeid, skincolor: $skincolor, ishandicap: $ishandicap, handicappedtypeid: $handicappedtypeid, childrenFirstname: $childrenFirstname, childrengender: $childrengender, familydetailid: $familydetailid, childrendob: $childrendob, interestedfieldid: $interestedfieldid, istakingtraining: $istakingtraining, professionalstatus: $professionalstatus, durationofactivities: $durationofactivities, childrenbloodgroup: $childrenbloodgroup, childrenbirthplace: $childrenbirthplace, chilrenbirthweight: $chilrenbirthweight, childrenbirthcondition: $childrenbirthcondition, childrenisBCGvaccinated: $childrenisBCGvaccinated, childrenisDPTHEPBvaccinated: $childrenisDPTHEPBvaccinated, childrenisOPVvaccinated: $childrenisOPVvaccinated, childrenisPCVvaccinated: $childrenisPCVvaccinated, childrenisIPVvaccinated: $childrenisIPVvaccinated, childrenisMRvaccinated: $childrenisMRvaccinated, childrenisJEvaccinated: $childrenisJEvaccinated, childrenisTDvaccinated: $childrenisTDvaccinated, childrenisgeneticdiseaseissue: $childrenisgeneticdiseaseissue, childrengeneticdiseasedescription: $childrengeneticdiseasedescription, childreniscovidvaccinated: $childreniscovidvaccinated, childrenvaccinedetails: $childrenvaccinedetails, childrenvacinedose: $childrenvacinedose, healthbloodgroup: $healthbloodgroup, birthplace: $birthplace, birthweight: $birthweight, birthcondition: $birthcondition, isbelowvaccinated: $isbelowvaccinated, iscovidvaccinated: $iscovidvaccinated, vaccinedetails: $vaccinedetails, vacinedose: $vacinedose, isgeneticdiseaseissue: $isgeneticdiseaseissue, geneticdiseasedescription: $geneticdiseasedescription, latitude: $latitude, longitude: $longitude, middlename: $middlename, lastname: $lastname, fatherMiddlename: $fatherMiddlename, fatherLastname: $fatherLastname, motherMiddlename: $motherMiddlename, motherLastname: $motherLastname, grandfatherMiddlename: $grandfatherMiddlename, grandfatherLastname: $grandfatherLastname, grandmotherMiddlename: $grandmotherMiddlename, grandmotherLastname: $grandmotherLastname, sonMiddlename: $sonMiddlename, sonLastname: $sonLastname, daughterMiddlename: $daughterMiddlename, daughterLastname: $daughterLastname, childrenMiddlename: $childrenMiddlename, childrenLastname: $childrenLastname, spouseMiddleName: $spouseMiddleName, spouseLastName: $spouseLastName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FinalformModel &&
        other.firstname == firstname &&
        other.age == age &&
        other.gender == gender &&
        other.dateofbirthpersonal == dateofbirthpersonal &&
        other.handicappedidpersonal == handicappedidpersonal &&
        other.mobilenumber == mobilenumber &&
        other.email == email &&
        other.pannumber == pannumber &&
        other.bloodgroup == bloodgroup &&
        other.tempProv == tempProv &&
        other.tempdistrict == tempdistrict &&
        other.tempMuni == tempMuni &&
        other.tempward == tempward &&
        other.tempstreettol == tempstreettol &&
        other.tempblockno == tempblockno &&
        other.permProv == permProv &&
        other.permdistrict == permdistrict &&
        other.permMuni == permMuni &&
        other.permpward == permpward &&
        other.permstreettol == permstreettol &&
        other.permblocknoaddress == permblocknoaddress &&
        other.fatherFirstName == fatherFirstName &&
        other.motherFirstName == motherFirstName &&
        other.spouseFirstName == spouseFirstName &&
        other.grandfatherFirstname == grandfatherFirstname &&
        other.grandmotherFirstname == grandmotherFirstname &&
        other.sonFirstname == sonFirstname &&
        other.daughterFirstname == daughterFirstname &&
        other.totalson == totalson &&
        other.totaldaughter == totaldaughter &&
        other.jobtype == jobtype &&
        other.joborganization == joborganization &&
        other.organizationaddress == organizationaddress &&
        other.annualincome == annualincome &&
        other.designation == designation &&
        other.nationalismandreligion == nationalismandreligion &&
        other.nationality == nationality &&
        other.religion == religion &&
        other.ethnicgroup == ethnicgroup &&
        other.totalmonthlyincome == totalmonthlyincome &&
        other.incomesource == incomesource &&
        other.incomesourceman == incomesourceman &&
        other.expensecategory == expensecategory &&
        other.totalexpense == totalexpense &&
        other.isbalanceddiet == isbalanceddiet &&
        other.foodconsumptiontiming == foodconsumptiontiming &&
        other.regularmealdescription == regularmealdescription &&
        other.isorganic == isorganic &&
        other.Houseaddress == Houseaddress &&
        other.Blocknumber == Blocknumber &&
        other.Streetname == Streetname &&
        other.Housenumber == Housenumber &&
        other.toilettypeid == toilettypeid &&
        other.citizenshipnumber == citizenshipnumber &&
        other.issueddate == issueddate &&
        other.issuedat == issuedat &&
        other.verifiedby == verifiedby &&
        other.businessorg == businessorg &&
        other.businesstypeid == businesstypeid &&
        other.orgname == orgname &&
        other.totalinvestment == totalinvestment &&
        other.annualincomeorg == annualincomeorg &&
        other.annualxpense == annualxpense &&
        other.totalnostaff == totalnostaff &&
        other.businessarea == businessarea &&
        other.businessproduct == businessproduct &&
        other.schoolname == schoolname &&
        other.schooltypeid == schooltypeid &&
        other.dresscode == dresscode &&
        other.dresscondition == dresscondition &&
        other.childenschoolschemeid == childenschoolschemeid &&
        other.skincolor == skincolor &&
        other.ishandicap == ishandicap &&
        other.handicappedtypeid == handicappedtypeid &&
        other.childrenFirstname == childrenFirstname &&
        other.childrengender == childrengender &&
        other.familydetailid == familydetailid &&
        other.childrendob == childrendob &&
        other.interestedfieldid == interestedfieldid &&
        other.istakingtraining == istakingtraining &&
        other.professionalstatus == professionalstatus &&
        other.durationofactivities == durationofactivities &&
        other.childrenbloodgroup == childrenbloodgroup &&
        other.childrenbirthplace == childrenbirthplace &&
        other.chilrenbirthweight == chilrenbirthweight &&
        other.childrenbirthcondition == childrenbirthcondition &&
        other.childrenisBCGvaccinated == childrenisBCGvaccinated &&
        other.childrenisDPTHEPBvaccinated == childrenisDPTHEPBvaccinated &&
        other.childrenisOPVvaccinated == childrenisOPVvaccinated &&
        other.childrenisPCVvaccinated == childrenisPCVvaccinated &&
        other.childrenisIPVvaccinated == childrenisIPVvaccinated &&
        other.childrenisMRvaccinated == childrenisMRvaccinated &&
        other.childrenisJEvaccinated == childrenisJEvaccinated &&
        other.childrenisTDvaccinated == childrenisTDvaccinated &&
        other.childrenisgeneticdiseaseissue == childrenisgeneticdiseaseissue &&
        other.childrengeneticdiseasedescription ==
            childrengeneticdiseasedescription &&
        other.childreniscovidvaccinated == childreniscovidvaccinated &&
        other.childrenvaccinedetails == childrenvaccinedetails &&
        other.childrenvacinedose == childrenvacinedose &&
        other.healthbloodgroup == healthbloodgroup &&
        other.birthplace == birthplace &&
        other.birthweight == birthweight &&
        other.birthcondition == birthcondition &&
        other.isbelowvaccinated == isbelowvaccinated &&
        other.iscovidvaccinated == iscovidvaccinated &&
        other.vaccinedetails == vaccinedetails &&
        other.vacinedose == vacinedose &&
        other.isgeneticdiseaseissue == isgeneticdiseaseissue &&
        other.geneticdiseasedescription == geneticdiseasedescription &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.middlename == middlename &&
        other.lastname == lastname &&
        other.fatherMiddlename == fatherMiddlename &&
        other.fatherLastname == fatherLastname &&
        other.motherMiddlename == motherMiddlename &&
        other.motherLastname == motherLastname &&
        other.grandfatherMiddlename == grandfatherMiddlename &&
        other.grandfatherLastname == grandfatherLastname &&
        other.grandmotherMiddlename == grandmotherMiddlename &&
        other.grandmotherLastname == grandmotherLastname &&
        other.sonMiddlename == sonMiddlename &&
        other.sonLastname == sonLastname &&
        other.daughterMiddlename == daughterMiddlename &&
        other.daughterLastname == daughterLastname &&
        other.childrenMiddlename == childrenMiddlename &&
        other.childrenLastname == childrenLastname &&
        other.spouseMiddleName == spouseMiddleName &&
        other.spouseLastName == spouseLastName;
  }

  @override
  int get hashCode {
    return firstname.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        dateofbirthpersonal.hashCode ^
        handicappedidpersonal.hashCode ^
        mobilenumber.hashCode ^
        email.hashCode ^
        pannumber.hashCode ^
        bloodgroup.hashCode ^
        tempProv.hashCode ^
        tempdistrict.hashCode ^
        tempMuni.hashCode ^
        tempward.hashCode ^
        tempstreettol.hashCode ^
        tempblockno.hashCode ^
        permProv.hashCode ^
        permdistrict.hashCode ^
        permMuni.hashCode ^
        permpward.hashCode ^
        permstreettol.hashCode ^
        permblocknoaddress.hashCode ^
        fatherFirstName.hashCode ^
        motherFirstName.hashCode ^
        spouseFirstName.hashCode ^
        grandfatherFirstname.hashCode ^
        grandmotherFirstname.hashCode ^
        sonFirstname.hashCode ^
        daughterFirstname.hashCode ^
        totalson.hashCode ^
        totaldaughter.hashCode ^
        jobtype.hashCode ^
        joborganization.hashCode ^
        organizationaddress.hashCode ^
        annualincome.hashCode ^
        designation.hashCode ^
        nationalismandreligion.hashCode ^
        nationality.hashCode ^
        religion.hashCode ^
        ethnicgroup.hashCode ^
        totalmonthlyincome.hashCode ^
        incomesource.hashCode ^
        incomesourceman.hashCode ^
        expensecategory.hashCode ^
        totalexpense.hashCode ^
        isbalanceddiet.hashCode ^
        foodconsumptiontiming.hashCode ^
        regularmealdescription.hashCode ^
        isorganic.hashCode ^
        Houseaddress.hashCode ^
        Blocknumber.hashCode ^
        Streetname.hashCode ^
        Housenumber.hashCode ^
        toilettypeid.hashCode ^
        citizenshipnumber.hashCode ^
        issueddate.hashCode ^
        issuedat.hashCode ^
        verifiedby.hashCode ^
        businessorg.hashCode ^
        businesstypeid.hashCode ^
        orgname.hashCode ^
        totalinvestment.hashCode ^
        annualincomeorg.hashCode ^
        annualxpense.hashCode ^
        totalnostaff.hashCode ^
        businessarea.hashCode ^
        businessproduct.hashCode ^
        schoolname.hashCode ^
        schooltypeid.hashCode ^
        dresscode.hashCode ^
        dresscondition.hashCode ^
        childenschoolschemeid.hashCode ^
        skincolor.hashCode ^
        ishandicap.hashCode ^
        handicappedtypeid.hashCode ^
        childrenFirstname.hashCode ^
        childrengender.hashCode ^
        familydetailid.hashCode ^
        childrendob.hashCode ^
        interestedfieldid.hashCode ^
        istakingtraining.hashCode ^
        professionalstatus.hashCode ^
        durationofactivities.hashCode ^
        childrenbloodgroup.hashCode ^
        childrenbirthplace.hashCode ^
        chilrenbirthweight.hashCode ^
        childrenbirthcondition.hashCode ^
        childrenisBCGvaccinated.hashCode ^
        childrenisDPTHEPBvaccinated.hashCode ^
        childrenisOPVvaccinated.hashCode ^
        childrenisPCVvaccinated.hashCode ^
        childrenisIPVvaccinated.hashCode ^
        childrenisMRvaccinated.hashCode ^
        childrenisJEvaccinated.hashCode ^
        childrenisTDvaccinated.hashCode ^
        childrenisgeneticdiseaseissue.hashCode ^
        childrengeneticdiseasedescription.hashCode ^
        childreniscovidvaccinated.hashCode ^
        childrenvaccinedetails.hashCode ^
        childrenvacinedose.hashCode ^
        healthbloodgroup.hashCode ^
        birthplace.hashCode ^
        birthweight.hashCode ^
        birthcondition.hashCode ^
        isbelowvaccinated.hashCode ^
        iscovidvaccinated.hashCode ^
        vaccinedetails.hashCode ^
        vacinedose.hashCode ^
        isgeneticdiseaseissue.hashCode ^
        geneticdiseasedescription.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        middlename.hashCode ^
        lastname.hashCode ^
        fatherMiddlename.hashCode ^
        fatherLastname.hashCode ^
        motherMiddlename.hashCode ^
        motherLastname.hashCode ^
        grandfatherMiddlename.hashCode ^
        grandfatherLastname.hashCode ^
        grandmotherMiddlename.hashCode ^
        grandmotherLastname.hashCode ^
        sonMiddlename.hashCode ^
        sonLastname.hashCode ^
        daughterMiddlename.hashCode ^
        daughterLastname.hashCode ^
        childrenMiddlename.hashCode ^
        childrenLastname.hashCode ^
        spouseMiddleName.hashCode ^
        spouseLastName.hashCode;
  }
}
