import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/Home/mainhive.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/businesshive.dart';
import 'package:palika/Hive/childhlthhive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/Hive/expensshive.dart';
import 'package:palika/Hive/extrahive.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/Hive/healthhive.dart';
import 'package:palika/Hive/personalhive.dart';
import 'package:palika/Hive/schoolhive.dart';
import 'package:palika/Hive/workinghive.dart';
import 'package:palika/providers/Hive%20Providers/businessProvider.dart';
import 'package:palika/providers/Hive%20Providers/childdetailsProvider.dart';
import 'package:palika/providers/Hive%20Providers/childhealthProvider.dart';
import 'package:palika/providers/Hive%20Providers/citizenProvider.dart';
import 'package:palika/providers/Hive%20Providers/ethencitiesProvider.dart';
import 'package:palika/providers/Hive%20Providers/expensesProvider.dart';
import 'package:palika/providers/Hive%20Providers/extraactivitiesProvider.dart';
import 'package:palika/providers/Hive%20Providers/familyProvider.dart';
import 'package:palika/providers/Hive%20Providers/foodConsumptionProvider.dart';
import 'package:palika/providers/Hive%20Providers/googleMapProvider.dart';
import 'package:palika/providers/Hive%20Providers/healthhiveProvider.dart';
import 'package:palika/providers/Hive%20Providers/personalProvider.dart';
import 'package:palika/providers/Hive%20Providers/schoolProvider.dart';

import '../../Constant/string.dart';
import '../../Hive/childrenhive.dart';
import '../../Hive/househive.dart';
import '../../models/Final Model/finalModel.dart';
import '../../providers/Core/ApiClientProvider.dart';
import '../../providers/Core/HomePageProvider.dart';
import '../../providers/Hive Providers/addressProvider.dart';
import '../../providers/Hive Providers/appearenceProvider.dart';
import '../../providers/Hive Providers/houseProvider.dart';
import '../../providers/Hive Providers/workingProvider.dart';

class storage extends StatelessWidget {
  // Box<AddressModel> _boxx = Hive.box('AddressModel');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Draft'),
            ),
            body: Consumer(builder: ((context, ref, child) {
              final personalDetails = ref.watch(personalHiveModelProvider);
              final addressDetails = ref.watch(addressModelProvider);
              final familyDetails = ref.watch(familyHiveModelProvider);
              final workingDetails = ref.watch(workingHiveModelProvider);
              final ethencitiesDetails =
                  ref.watch(ethencitiesHiveModelProvider);
              final expensesDetails = ref.watch(expensesHiveModelProvider);
              final houseDetails = ref.watch(houseHiveModelProvider);
              final citizenshipDetails = ref.watch(citizenHiveModelProvider);
              final businessDetails = ref.watch(businessModelProvider);
              final extraDetails = ref.watch(extraHiveModelProvider);
              final schoolDetails = ref.watch(schoolHiveModelProvider);
              final appearenceDetails = ref.watch(appearenceModelProvider);
              final childrenDetails = ref.watch(childdetailModelProvider);
              final childrenHealthDetails = ref.watch(childhealthModelProvider);
              final googlemapDetails = ref.watch(googleHiveModelProvider);
              final healthDetails = ref.watch(healthHiveModelProvider);
              final foodDetails = ref.watch(foodHiveModelProvider);
              return ListView(
                children: [
                  const Center(
                    child: Text(
                      'Personal Address',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      FormCallMethod(personalDetails,
                          title: 'First Name',
                          details: personalDetails[0].firstNamepersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Middle Name',
                          details: personalDetails[0].middleNamepersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Last Name',
                          details: personalDetails[0].lastNamepersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Gender',
                          details: personalDetails[0].genderpersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Date of Birth',
                          details: personalDetails[0].dateofbirthpersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Blood Group',
                          details: personalDetails[0].bloodgroupPersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Email',
                          details: personalDetails[0].emailpersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Age',
                          details: '${personalDetails[0].agepersonal!}'),
                      FormCallMethod(personalDetails,
                          title: 'Handicapped Type Id',
                          details: personalDetails[0].handicappedIDPersonal!),
                      FormCallMethod(personalDetails,
                          title: 'Mobile Number',
                          details:
                              '${personalDetails[0].mobilenumberpersonal!}'),
                      FormCallMethod(personalDetails,
                          title: 'Pan Number',
                          details: personalDetails[0].pannumberpersonal!),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Address Address',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary Province',
                      //     details: addressDetails[0].tempProv!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary Municipality',
                      //     details: addressDetails[0].tempMuni!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary District',
                      //     details: addressDetails[0].tempdistrict!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary Street/Tol',
                      //     details: addressDetails[0].tempstreettol!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary Block No.',
                      //     details: '${addressDetails[0].tempblockno!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary Ward No.',
                      //     details: '${addressDetails[0].tempward!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Permanent Province',
                      //     details: addressDetails[0].permProv!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Permanent Municipality',
                      //     details: addressDetails[0].tempMuni!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Permanent District',
                      //     details: addressDetails[0].permdistrict!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Permanent Street/Tol',
                      //     details: addressDetails[0].permstreettol!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Permanent Block No.',
                      //     details: '${addressDetails[0].permblocknoaddress!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Temporary Ward No.',
                      //     details: '${addressDetails[0].permpward!}'),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Family Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Father First Name',
                      //     details: familyDetails[0].fatherFirstName!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Father Middle Name',
                      //     details: familyDetails[0].fatherMiddlename!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Father Last Name',
                      //     details: familyDetails[0].fatherLastname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Mother First Name',
                      //     details: familyDetails[0].motherFirstName!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Mother Middle Name',
                      //     details: familyDetails[0].motherMiddlename!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Mother Last Name',
                      //     details: familyDetails[0].motherLastname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Spouse First Name',
                      //     details: familyDetails[0].spouseFirstName!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Spouse Middle Name',
                      //     details: familyDetails[0].spouseMiddleName!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Spouse Last Name',
                      //     details: familyDetails[0].spouseLastName!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Grand Father First Name',
                      //     details: familyDetails[0].grandfatherFirstname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Grand Father Middle Name',
                      //     details: familyDetails[0].grandfatherMiddlename!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Grand Father Last Name',
                      //     details: familyDetails[0].grandfatherLastname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Grand Mother First Name',
                      //     details: familyDetails[0].grandmotherFirstname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Grand Mother Middle Name',
                      //     details: familyDetails[0].grandmotherMiddlename!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Grand Mother Last Name',
                      //     details: familyDetails[0].grandmotherLastname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Son First Name',
                      //     details: familyDetails[0].sonFirstname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Son Middle Name',
                      //     details: familyDetails[0].sonMiddlename!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Son Last Name',
                      //     details: familyDetails[0].sonLastname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Daughter First Name',
                      //     details: familyDetails[0].daughterFirstname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Daughter Middle Name',
                      //     details: familyDetails[0].daughterMiddlename!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Daughter Last Name',
                      //     details: familyDetails[0].daughterLastname!),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Total Son',
                      //     details: '${familyDetails[0].totalson!}'),
                      // FamilyCallMethod(familyDetails,
                      //     title: 'Total Daughter',
                      //     details: '${familyDetails[0].totaldaughter!}'),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Working Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // WorkingCallMethod(workingDetails,
                      //     title: 'Job Type',
                      //     details: workingDetails[0].jobtype!),
                      // WorkingCallMethod(workingDetails,
                      //     title: 'Job Organization',
                      //     details: workingDetails[0].joborganization!),
                      // WorkingCallMethod(workingDetails,
                      //     title: 'Organization Address',
                      //     details: workingDetails[0].organizationaddress!),
                      // WorkingCallMethod(workingDetails,
                      //     title: 'Designation',
                      //     details: workingDetails[0].designation!),
                      // WorkingCallMethod(workingDetails,
                      //     title: 'Annual Income',
                      //     details: '${workingDetails[0].annualincome!}'),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Etencities Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // EthnicitiesCallMethod(ethencitiesDetails,
                      //     title: 'Nationalism or Religion',
                      //     details:
                      //         ethencitiesDetails[0].nationalismandreligion!),
                      // EthnicitiesCallMethod(ethencitiesDetails,
                      //     title: 'Nationality',
                      //     details: ethencitiesDetails[0].nationality!),
                      // EthnicitiesCallMethod(ethencitiesDetails,
                      //     title: 'Religion',
                      //     details: ethencitiesDetails[0].religion!),
                      // EthnicitiesCallMethod(ethencitiesDetails,
                      //     title: 'Ethnic Group',
                      //     details: ethencitiesDetails[0].ethnicgroup!),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Expenses Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // ExpensesCallMethod(expensesDetails,
                      //     title: 'Total Month Income',
                      //     details: '${expensesDetails[0].totalmonthlyincome!}'),
                      // ExpensesCallMethod(expensesDetails,
                      //     title: 'Income Source',
                      //     details: expensesDetails[0].incomesource!),
                      // ExpensesCallMethod(expensesDetails,
                      //     title: 'Income Source Mainly',
                      //     details: expensesDetails[0].incomesourceman!),
                      // ExpensesCallMethod(expensesDetails,
                      //     title: 'Expense Category  ',
                      //     details: expensesDetails[0].expensecategory!),
                      // ExpensesCallMethod(expensesDetails,
                      //     title: 'Total Expense',
                      //     details: '${expensesDetails[0].totalexpense!}'),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Food Consumption Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // FoodCallMethod(foodDetails,
                      //     title: 'Is Organic?',
                      //     details: '${foodDetails[0].isorganic!}'),
                      // FoodCallMethod(foodDetails,
                      //     title: 'Food Consumption Timing',
                      //     details: foodDetails[0].foodconsumptiontiming!),
                      // FoodCallMethod(foodDetails,
                      //     title: 'Is Balanced Diet?',
                      //     details: '${foodDetails[0].isbalanceddiet!}'),
                      // FoodCallMethod(
                      //   foodDetails,
                      //   title: 'Regular Meal Description',
                      //   details: foodDetails[0].regularmealdescription!,
                      //      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'House Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // HouseCallMethod(houseDetails,
                      //     title: 'House Address',
                      //     details: houseDetails[0].houseaddress!),
                      // HouseCallMethod(houseDetails,
                      //     title: 'Block Number',
                      //     details: '${houseDetails[0].blocknumber!}'),
                      // HouseCallMethod(houseDetails,
                      //     title: 'Street Name',
                      //     details: houseDetails[0].streetname!),
                      // HouseCallMethod(houseDetails,
                      //     title: 'House Number',
                      //     details: '${houseDetails[0].housenumber!}'),
                      // HouseCallMethod(houseDetails,
                      //     title: 'Total Type Id',
                      //     details: houseDetails[0].toilettypeid!),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Business Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Business Org',
                      //     details: businessDetails[0].businessorg!),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Business Type Id',
                      //     details: businessDetails[0].businesstypeid!),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Organization Name',
                      //     details: businessDetails[0].orgname!),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Total Investment',
                      //     details: '${businessDetails[0].totalinvestment!}'),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Annual Income',
                      //     details: '${businessDetails[0].annualincomeorg!}'),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Annual Expenses',
                      //     details: '${businessDetails[0].annualxpense!}'),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Total No. of Staff',
                      //     details: '${businessDetails[0].totalnostaff!}'),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Business Area',
                      //     details: businessDetails[0].businessarea!),
                      // BusinessCallMethod(businessDetails,
                      //     title: 'Business Product',
                      //     details: businessDetails[0].businessproduct!),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'School Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // SchoolCallMethod(schoolDetails,
                      //     title: 'School Name',
                      //     details: schoolDetails[0].schoolname!),
                      // SchoolCallMethod(schoolDetails,
                      //     title: 'School Type Id',
                      //     details: schoolDetails[0].schooltypeid!),
                      // SchoolCallMethod(schoolDetails,
                      //     title: 'Dress Code',
                      //     details: schoolDetails[0].dresscode!),
                      // SchoolCallMethod(schoolDetails,
                      //     title: 'Dress Conditions',
                      //     details: schoolDetails[0].dresscondition!),
                      // SchoolCallMethod(schoolDetails,
                      //     title: 'Children Schema Id',
                      //     details: schoolDetails[0].childenschoolschemeid!),
                    ]),
                  ),
                  const Center(
                    child: Text(
                      'Appearence Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // AppearenceCallMethod(appearenceDetails,
                      //     title: 'Skin Color',
                      //     details: appearenceDetails[0].skincolor!),
                      // AppearenceCallMethod(appearenceDetails,
                      //     title: 'Is Handicap?',
                      //     details: '${appearenceDetails[0].ishandicap!}'),
                      // AppearenceCallMethod(
                      //   appearenceDetails,
                      //   title: 'Handicapped Type Id',
                      //   details: appearenceDetails[0].handicappedtypeid!,
                      // ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Citizenship Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // CitizensCallMethod(citizenshipDetails,
                      //     title: 'Citezenship Number',
                      //     details:
                      //         '${citizenshipDetails[0].citizenshipnumber}'),
                      // CitizensCallMethod(
                      //   citizenshipDetails,
                      //   title: 'Issued Place',
                      //   details: citizenshipDetails[0].issuedat,
                      // ),
                      // CitizensCallMethod(
                      //   citizenshipDetails,
                      //   title: 'Issued Date',
                      //   details: citizenshipDetails[0].issueddate,
                      // ),
                      // CitizensCallMethod(
                      //   citizenshipDetails,
                      //   title: 'Verified by',
                      //   details: citizenshipDetails[0].verifiedby,
                      // ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Extra Cariculum Activities',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // ExtraCallMethod(extraDetails,
                      //     title: 'Interested Field',
                      //     details: extraDetails[0].interestedfieldid!),
                      // ExtraCallMethod(extraDetails,
                      //     title: 'Is Taking Training?',
                      //     details: '${extraDetails[0].istakingtraining!}'),
                      // ExtraCallMethod(extraDetails,
                      //     title: 'Professional Status',
                      //     details: extraDetails[0].professionalstatus!),
                      // ExtraCallMethod(
                      //   extraDetails,
                      //   title: 'Duration Of Activities',
                      //   details: extraDetails[0].durationofactivities!,
                      // ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Children Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // ChildrenDetailsCallMethod(childrenDetails,
                      //     title: 'Children Full Name',
                      //     details: childrenDetails[0].childrenFirstname!),
                      // ChildrenDetailsCallMethod(childrenDetails,
                      //     title: 'Family Details Id?',
                      //     details: childrenDetails[0].familydetailid!),
                      // ChildrenDetailsCallMethod(childrenDetails,
                      //     title: 'Child Gender',
                      //     details: childrenDetails[0].childrengender!),
                      // ChildrenDetailsCallMethod(
                      //   childrenDetails,
                      //   title: 'Children Date OF Birth',
                      //   details: childrenDetails[0].childrendob!,
                      // ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Children Health',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Blood Group',
                      //     details:
                      //         childrenHealthDetails[0].childrenbloodgroup!),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Birth Place',
                      //     details:
                      //         childrenHealthDetails[0].childrenbirthplace!),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Birth Weight',
                      //     details:
                      //         '${childrenHealthDetails[0].chilrenbirthweight!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Birth Conditions',
                      //     details:
                      //         childrenHealthDetails[0].childrenbirthcondition!),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is BCG Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisBCGvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is DPT H_HPB Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisDPTHEPBvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is OPV Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisOPVvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is PCV Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisPCVvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is IPV Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisIPVvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is MR Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisMRvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is JE Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisJEvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is TD Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisTDvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is Genetic Disease Issues?',
                      //     details:
                      //         '${childrenHealthDetails[0].childrenisgeneticdiseaseissue!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Genetic Disease Descrption',
                      //     details: childrenHealthDetails[0]
                      //         .childrengeneticdiseasedescription!),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Is Covid Vaccinated?',
                      //     details:
                      //         '${childrenHealthDetails[0].childreniscovidvaccinated!}'),
                      // ChildrenHealthCallMethod(childrenHealthDetails,
                      //     title: 'Vaccine Details',
                      //     details:
                      //         childrenHealthDetails[0].childrenvaccinedetails!),
                      // ChildrenHealthCallMethod(
                      //   childrenHealthDetails,
                      //   title: 'Vaccine Dose',
                      //   details: childrenHealthDetails[0].childrenvacinedose!,
                      // ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Health Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // HealthCallMethod(healthDetails,
                      //     title: 'Birth Place',
                      //     details: healthDetails[0].birthplace!),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Birth Weight',
                      //     details: '${healthDetails[0].birthweight!}'),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Birth Conditions',
                      //     details: healthDetails[0].birthcondition!),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Is Below 5 Vaccinated?',
                      //     details: '${healthDetails[0].isbelowvaccinated!}'),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Is Covid Vaccinated?',
                      //     details: '${healthDetails[0].iscovidvaccinated!}'),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Is Genetic Disease Issues?',
                      //     details:
                      //         '${healthDetails[0].isgeneticdiseaseissue!}'),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Vaccine Details',
                      //     details: healthDetails[0].vaccinedetails!),
                      // HealthCallMethod(
                      //   healthDetails,
                      //   title: 'Vaccine Dose',
                      //   details: healthDetails[0].vacinedose!,
                      // ),
                      // HealthCallMethod(healthDetails,
                      //     title: 'Genetic Disease Descrption',
                      //     details: healthDetails[0].geneticdiseasedescription!),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Google Map',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: const [
                      // GooglemapCallMethod(googlemapDetails,
                      //     title: 'Latitude',
                      //     details: '${googlemapDetails[0].latitude!}'),
                      // GooglemapCallMethod(
                      //   googlemapDetails,
                      //   title: 'Longtitude',
                      //   details: '${googlemapDetails[0].longitude!}',
                      // ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final myString =
                          await ref.watch(dbProvider).getData(dbKey: mainList);
                      final List jsonData = json.decode(myString);
                      final List<HomeHiveModel> listData = jsonData
                          .map((d) => HomeHiveModel.fromJson(d))
                          .toList();

                      final personalString = await ref
                          .watch(dbProvider)
                          .getData(dbKey: personalList);
                      final List jsonDatapersonal = json.decode(personalString);
                      final List<PersonalHiveModel> listDatapersonal =
                          jsonDatapersonal
                              .map((d) => PersonalHiveModel.fromJson(d))
                              .toList();

                      List<FinalformModel> finalList = [];

                      for (int i = 0; i < listData.length; i++) {
                        final HomeHiveModel myFormModel = listData
                            .where((element) =>
                                element.homeid == listData[i].homeid)
                            .toList()
                            .first;

                        final PersonalHiveModel personalFormModel =
                            listDatapersonal
                                .where((element) =>
                                    element.firstNamepersonal ==
                                    listData[i].homename)
                                .toList()
                                .first;
                        final FinalformModel finalFormModel = FinalformModel(
                          firstname: personalFormModel.firstNamepersonal,
                          middlename: personalFormModel.middleNamepersonal,
                          lastname: personalFormModel.lastNamepersonal,
                          email: personalFormModel.emailpersonal,
                          pannumber: personalFormModel.pannumberpersonal,
                          mobilenumber: personalFormModel.mobilenumberpersonal,
                          age: personalFormModel.agepersonal,
                          handicappedidpersonal:
                              personalFormModel.handicappedIDPersonal,
                          gender: personalFormModel.genderpersonal,
                          bloodgroup: personalFormModel.bloodgroupPersonal,
                          dateofbirthpersonal:
                              personalFormModel.dateofbirthpersonal,
                        );
                        print(personalFormModel);
                      }

                      for (int j = 0; j < finalList.length; j++) {
                        await ref
                            .watch(apiClientProvider)
                            .postData(formData: finalList[j].toMap());
                      }
                    },
                    child: const Text("Push To Server"),
                  ),
                  // SizedBox(
                  //   height: 50,
                  //   width: double.infinity,
                  //   child: MaterialButton(
                  //     onPressed: () async {
                  //       var url =
                  //           Uri.parse('https://reqbin.com/echo/post/json');
                  //       var response = await http.post(
                  //         url,
                  //         headers: {
                  //           "Accept": "application/json; charset=utf-8",
                  //           "Access-Control-Allow-Origin":
                  //               "*", // Required for CORS support to work
                  //           "Access-Control-Allow-Methods":
                  //               "POST, GET, OPTIONS",
                  //           HttpHeaders.contentTypeHeader: "application/json",
                  //         },
                  //         // body: json.encode(personalAddress)
                  //       );
                  //       print(response.body);
                  //     },
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(22.0)),
                  //     elevation: 5.0,
                  //     color: const Color(0xFF00a2e8),
                  //     textColor: Colors.black,
                  //     child: const Text('Submit'),
                  //   ),
                  // ),
                ],
              );
            }))));
  }

  Row FormCallMethod(
    List<PersonalHiveModel> personalDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row AddressCallMethod(
    List<AddressHiveModel> addressDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row FamilyCallMethod(
    List<FamilyModel> familyDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row WorkingCallMethod(
    List<WorkingHiveModel> workingDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row EthnicitiesCallMethod(
    List<EthencitiesHiveModel> ethencitiesDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row ExpensesCallMethod(
    List<ExpenssHiveModel> expensesDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row AppearenceCallMethod(
    List<AppearenceHiveModel> appearenceDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row HouseCallMethod(
    List<Housemodel> houseDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row CitizensCallMethod(
    List<CitizensHiveModel> citizenshipDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row ExtraCallMethod(
    List<ExtraHiveModel> extraDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row ChildrenDetailsCallMethod(
    List<ChildDetailsHiveModel> childrenDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row ChildrenHealthCallMethod(
    List<ChildHealthHiveModel> childrenHealthDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row HealthCallMethod(
    List<HealthHiveModel> healthDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row GooglemapCallMethod(
    List<GoogleHiveModel> googlemapDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row FoodCallMethod(
    List<Foodmodel> foodDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row BusinessCallMethod(
    List<BusinessHiveModel> businessDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }

  Row SchoolCallMethod(
    List<SchoolHiveModel> schoolDetails, {
    required String title,
    required dynamic details,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }
}
