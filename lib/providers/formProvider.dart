// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive/hive.dart';
// import 'package:palika/main.dart';
// import 'package:palika/models/formModel.dart';

// // final formModelProvider = StateNotifierProvider<FormProvider, List<formModel>>(
// //     (ref) => FormProvider(ref: ref));

// // class FormProvider extends StateNotifier<List<formModel>> {
// //   FormProvider({required this.ref}) : super(ref.read(boxB));
// //   StateNotifierProviderRef ref;

// //   void addForm(formModel useform) async {
// //     final box = await Hive.openBox<formModel>('FormModel');
// //     if (state.isEmpty) {
// //       final useForm = formModel(
//           // firstname: useform.firstname,
//           // middlename: useform.middlename,
//           // lastname: useform.lastname,
//           // gender: useform.gender,
//           // dateofbirthpersonal: useform.dateofbirthpersonal,
//           // bloodgroup: useform.bloodgroup,
//           // email: useform.email,
//           // age: useform.age,
//           // handicappedidpersonal: useform.handicappedidpersonal,
//           // mobilenumber: useform.mobilenumber,
//           // pannumber: useform.pannumber,
//           );
//       // Hive.box<formModel>('FormModel').add(useForm);
//       // box.add(useForm);
//       // box.add(formModel(
//       //   fullNamepersonal: useform.fullNamepersonal,
//       //   email: useform.email,
//       //   age: useform.age,
//       //   handicappedidpersonal: useform.handicappedidpersonal,
//       //   mobilenumber: useform.mobilenumber,
//       //   pannumber: useform.pannumber,
//       // ));
//       state = [...state, useForm];
//     } else {
//       final user = state[0];
//       user.tempProv = user.tempProv ?? useform.tempProv;
//       user.tempdistrict = user.tempdistrict ?? useform.tempdistrict;
//       user.tempMuni = user.tempMuni ?? useform.tempMuni;
//       user.tempward = user.tempward ?? useform.tempward;
//       user.tempstreettol = user.tempstreettol ?? useform.tempstreettol;
//       user.tempblockno = user.tempblockno ?? useform.tempblockno;
//       user.permProv = user.permProv ?? useform.permProv;
//       user.permdistrict = user.permdistrict ?? useform.permdistrict;
//       user.permMuni = user.permMuni ?? useform.permMuni;
//       user.permstreettol = user.permstreettol ?? useform.permstreettol;
//       user.permpward = user.permpward ?? useform.permpward;
//       user.permblocknoaddress =
//           user.permblocknoaddress ?? useform.permblocknoaddress;

//       user.fatherFirstName = user.fatherFirstName ?? useform.fatherFirstName;
//       user.fatherMiddlename = user.fatherMiddlename ?? useform.fatherMiddlename;
//       user.fatherLastname = user.fatherLastname ?? useform.fatherLastname;
//       user.motherFirstName = user.motherFirstName ?? useform.motherFirstName;
//       user.motherLastname = user.motherLastname ?? useform.motherLastname;
//       user.spouseFirstName = user.spouseFirstName ?? useform.spouseFirstName;
//       user.spouseMiddleName = user.spouseMiddleName ?? useform.spouseMiddleName;
//       user.spouseLastName = user.spouseLastName ?? useform.spouseLastName;
//       user.grandfatherFirstname =
//           user.grandfatherFirstname ?? useform.grandfatherFirstname;
//       user.grandfatherMiddlename =
//           user.grandfatherMiddlename ?? useform.grandfatherMiddlename;
//       user.grandfatherLastname = user.grandmotherFirstname =
//           user.grandmotherFirstname ?? useform.grandmotherFirstname;
//       user.grandmotherMiddlename =
//           user.grandmotherMiddlename ?? useform.grandmotherMiddlename;
//       user.grandmotherLastname =
//           user.grandmotherLastname ?? useform.grandmotherLastname;
//       user.sonFirstname = user.sonFirstname ?? useform.sonFirstname;
//       user.sonMiddlename = user.sonMiddlename ?? useform.sonMiddlename;
//       user.sonLastname = user.sonLastname ?? useform.sonLastname;
//       user.daughterFirstname =
//           user.daughterFirstname ?? useform.daughterFirstname;
//       user.daughterMiddlename =
//           user.daughterMiddlename ?? useform.daughterMiddlename;
//       user.daughterLastname = user.daughterLastname ?? useform.daughterLastname;
//       user.totalson = user.totalson ?? useform.totalson;
//       user.totaldaughter = user.totaldaughter ?? useform.totaldaughter;

//       user.jobtype = user.jobtype ?? useform.jobtype;
//       user.joborganization = user.joborganization ?? useform.joborganization;
//       user.organizationaddress =
//           user.organizationaddress ?? useform.organizationaddress;
//       user.annualincome = user.annualincome ?? useform.annualincome;
//       user.designation = user.designation ?? useform.designation;

//       user.nationalismandreligion =
//           user.nationalismandreligion ?? useform.nationalismandreligion;
//       user.nationality = user.nationality ?? useform.nationality;
//       user.religion = user.religion ?? useform.religion;
//       user.ethnicgroup = user.ethnicgroup ?? useform.ethnicgroup;

//       user.totalmonthlyincome =
//           user.totalmonthlyincome ?? useform.totalmonthlyincome;
//       user.incomesource = user.incomesource ?? useform.incomesource;
//       user.incomesourceman = user.incomesourceman ?? useform.incomesourceman;
//       user.expensecategory = user.expensecategory ?? useform.expensecategory;
//       user.totalexpense = user.totalexpense ?? useform.totalexpense;

//       user.isbalanceddiet = user.isbalanceddiet ?? useform.isbalanceddiet;
//       user.foodconsumptiontiming =
//           user.foodconsumptiontiming ?? useform.foodconsumptiontiming;
//       user.regularmealdescription =
//           user.regularmealdescription ?? useform.regularmealdescription;
//       user.isorganic = useform.isorganic;

//       user.Houseaddress = user.Houseaddress ?? useform.Houseaddress;
//       user.Blocknumber = user.Blocknumber ?? useform.Blocknumber;
//       user.Streetname = user.Streetname ?? useform.Streetname;
//       user.Housenumber = user.Housenumber ?? useform.Housenumber;
//       user.toilettypeid = user.toilettypeid ?? useform.toilettypeid;

//       user.citizenshipnumber =
//           user.citizenshipnumber ?? useform.citizenshipnumber;
//       user.issueddate = user.issueddate ?? useform.issueddate;
//       user.issuedat = user.issuedat ?? useform.issuedat;
//       user.verifiedby = user.verifiedby ?? useform.verifiedby;

//       user.businessorg = user.businessorg ?? useform.businessorg;
//       user.businesstypeid = user.businesstypeid ?? useform.businesstypeid;
//       user.orgname = user.orgname ?? useform.orgname;
//       user.totalinvestment = user.totalinvestment ?? useform.totalinvestment;
//       user.annualincomeorg = user.annualincomeorg ?? useform.annualincomeorg;
//       user.annualxpense = user.annualxpense ?? useform.annualxpense;
//       user.totalnostaff = user.totalnostaff ?? useform.totalnostaff;
//       user.businessarea = user.businessarea ?? useform.businessarea;
//       user.businessproduct = user.businessproduct ?? useform.businessproduct;

//       user.interestedfieldid =
//           user.interestedfieldid ?? useform.interestedfieldid;
//       user.istakingtraining = user.istakingtraining ?? useform.istakingtraining;
//       user.professionalstatus =
//           user.professionalstatus ?? useform.professionalstatus;
//       user.durationofactivities =
//           user.durationofactivities ?? useform.durationofactivities;

//       user.schoolname = user.schoolname ?? useform.schoolname;
//       user.schooltypeid = user.schooltypeid ?? useform.schooltypeid;
//       user.schooltypeid = user.schooltypeid ?? useform.schooltypeid;
//       user.dresscode = user.dresscode ?? useform.dresscode;
//       user.dresscondition = user.dresscondition ?? useform.dresscondition;
//       user.childenschoolschemeid =
//           user.childenschoolschemeid ?? useform.childenschoolschemeid;

//       user.skincolor = user.skincolor ?? useform.skincolor;
//       user.ishandicap = user.ishandicap ?? useform.ishandicap;
//       user.handicappedtypeid =
//           user.handicappedtypeid ?? useform.handicappedtypeid;

//       user.childrenFirstname =
//           user.childrenFirstname ?? useform.childrenFirstname;
//       user.childrenMiddlename =
//           user.childrenMiddlename ?? useform.childrenMiddlename;
//       user.childrenLastname = user.childrenLastname ?? useform.childrenLastname;
//       user.childrengender = user.childrengender ?? useform.childrengender;
//       user.familydetailid = user.familydetailid ?? useform.familydetailid;
//       user.childrendob = user.childrendob ?? useform.childrendob;

//       user.childrenbirthplace =
//           user.childrenbirthplace ?? useform.childrenbirthplace;
//       user.chilrenbirthweight =
//           user.chilrenbirthweight ?? useform.chilrenbirthweight;
//       user.childrenbirthcondition =
//           user.childrenbirthcondition ?? useform.childrenbirthcondition;
//       user.childrenbloodgroup =
//           user.childrenbloodgroup ?? useform.childrenbloodgroup;
//       user.childrenvaccinedetails =
//           user.childrenvaccinedetails ?? useform.childrenvaccinedetails;
//       user.childrenvacinedose =
//           user.childrenvacinedose ?? useform.childrenvacinedose;

//       user.childrengeneticdiseasedescription =
//           user.childrengeneticdiseasedescription ??
//               useform.childrengeneticdiseasedescription;
//       user.iscovidvaccinated =
//           user.iscovidvaccinated ?? useform.iscovidvaccinated;
//       user.childrenisBCGvaccinated =
//           user.childrenisBCGvaccinated ?? useform.childrenisBCGvaccinated;
//       user.childrenisOPVvaccinated =
//           user.childrenisOPVvaccinated ?? useform.childrenisOPVvaccinated;
//       user.childrenisDPTHEPBvaccinated = user.childrenisDPTHEPBvaccinated ??
//           useform.childrenisDPTHEPBvaccinated;
//       user.childrenisPCVvaccinated =
//           user.childrenisPCVvaccinated ?? useform.childrenisPCVvaccinated;
//       user.childrenisIPVvaccinated =
//           user.childrenisIPVvaccinated ?? useform.childrenisIPVvaccinated;
//       user.childrenisMRvaccinated =
//           user.childrenisMRvaccinated ?? useform.childrenisMRvaccinated;
//       user.childrenisJEvaccinated =
//           user.childrenisJEvaccinated ?? useform.childrenisJEvaccinated;
//       user.childrenisTDvaccinated =
//           user.childrenisTDvaccinated ?? useform.childrenisTDvaccinated;

//       user.healthbloodgroup = user.healthbloodgroup ?? useform.healthbloodgroup;
//       user.birthplace = user.birthplace ?? useform.birthplace;
//       user.birthweight = user.birthweight ?? useform.birthweight;
//       user.birthcondition = user.birthcondition ?? useform.birthcondition;
//       user.geneticdiseasedescription =
//           user.geneticdiseasedescription ?? useform.geneticdiseasedescription;
//       user.vaccinedetails = user.vaccinedetails ?? useform.vaccinedetails;
//       user.vacinedose = user.vacinedose ?? useform.vacinedose;
//       user.isbelowvaccinated =
//           user.isbelowvaccinated ?? useform.isbelowvaccinated;
//       user.iscovidvaccinated =
//           user.iscovidvaccinated ?? useform.iscovidvaccinated;
//       user.isgeneticdiseaseissue =
//           user.isgeneticdiseaseissue ?? useform.isgeneticdiseaseissue;

//       user.latitude = user.latitude ?? useform.latitude;
//       user.longitude = user.longitude ?? useform.longitude;

//       user.save();
//       useform.save();
//       state = [
//         for (final element in state)
//           if (element == useform) useform else element
//       ];
//     }
//   }

//   void clearAll() {
//     Hive.box<formModel>('FormModel').clear();
//   }

//   @override
//   void dispose() {
//     Hive.box('FormModel').close();
//     super.dispose();
//   }
// }
