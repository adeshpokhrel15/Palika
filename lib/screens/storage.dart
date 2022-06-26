import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/personalhive.dart';
import 'package:palika/Hive/workinghive.dart';
import 'package:palika/providers/Hive%20Providers/citizenProvider.dart';
import 'package:palika/providers/Hive%20Providers/ethencitiesProvider.dart';
import 'package:palika/providers/Hive%20Providers/expensesProvider.dart';
import 'package:palika/providers/Hive%20Providers/familyProvider.dart';
import 'package:palika/providers/Hive%20Providers/foodConsumptionProvider.dart';
import 'package:palika/providers/Hive%20Providers/personalProvider.dart';

import '../providers/Hive Providers/addressProvider.dart';
import '../providers/Hive Providers/houseProvider.dart';
import '../providers/Hive Providers/workingProvider.dart';

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
              final foodDetails = ref.watch(foodHiveModelProvider);
              final houseDetails = ref.watch(houseHiveModelProvider);
              final citizenshipDetails = ref.watch(citizenHiveModelProvider);

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
                      // AddressCallMethod(personalDetails,
                      //     title: 'First Name',
                      //     details: personalDetails[0].firstNamepersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Middle Name',
                      //     details: personalDetails[0].middleNamepersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Last Name',
                      //     details: personalDetails[0].lastNamepersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Gender',
                      //     details: personalDetails[0].genderpersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Date of Birth',
                      //     details: personalDetails[0].dateofbirthpersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Blood Group',
                      //     details: personalDetails[0].bloodgroupPersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Email',
                      //     details: personalDetails[0].emailpersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Age',
                      //     details: '${personalDetails[0].agepersonal!}'),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Handicapped Type Id',
                      //     details: personalDetails[0].handicappedIDPersonal!),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Mobile Number',
                      //     details:
                      //         '${personalDetails[0].mobilenumberpersonal!}'),
                      // AddressCallMethod(personalDetails,
                      //     title: 'Pan Number',
                      //     details: personalDetails[0].pannumberpersonal!),
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
                    child: Column(children: [
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
                    child: Column(children: [
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
                    child: Column(children: [
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
                    child: Column(children: [
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
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Total Month Income',
                      //     details: '${addressDetails[0].totalmonthlyincome!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Income Source',
                      //     details: addressDetails[0].incomesource!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Income Source Mainly',
                      //     details: addressDetails[0].incomesourceman!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Expense Category  ',
                      //     details: addressDetails[0].expensecategory!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Total Expense',
                      //     details: '${addressDetails[0].totalexpense!}'),
                    ]),
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Organic?',
                      //     details: '${addressDetails[0].isorganic!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Food Consumption Timing',
                      //     details: addressDetails[0].foodconsumptiontiming!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Balanced Diet?',
                      //     details: '${addressDetails[0].isbalanceddiet!}'),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Regular Meal Description',
                      //   details: addressDetails[0].regularmealdescription!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'House Address',
                      //     details: addressDetails[0].Houseaddress!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Block Number',
                      //     details: '${addressDetails[0].Blocknumber!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Street Name',
                      //     details: addressDetails[0].Streetname!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'House Number',
                      //     details: '${addressDetails[0].Housenumber!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Total Type Id',
                      //     details: addressDetails[0].toilettypeid!),
                    ]),
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Business Org',
                      //     details: addressDetails[0].businessorg!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Business Type Id',
                      //     details: addressDetails[0].businesstypeid!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Organization Name',
                      //     details: addressDetails[0].orgname!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Total Investment',
                      //     details: '${addressDetails[0].totalinvestment!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Annual Income',
                      //     details: '${addressDetails[0].annualincomeorg!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Annual Expenses',
                      //     details: '${addressDetails[0].annualxpense!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Total No. of Staff',
                      //     details: '${addressDetails[0].totalnostaff!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Business Area',
                      //     details: addressDetails[0].businessarea!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Business Product',
                      //     details: addressDetails[0].businessproduct!),
                    ]),
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'School Name',
                      //     details: addressDetails[0].schoolname!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'School Type Id',
                      //     details: addressDetails[0].schooltypeid!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Dress Code',
                      //     details: addressDetails[0].dresscode!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Dress Conditions',
                      //     details: addressDetails[0].dresscondition!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Children Schema Id',
                      //     details: addressDetails[0].childenschoolschemeid!),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Apperence Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Skin Color',
                      //     details: addressDetails[0].skincolor!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Handicap?',
                      //     details: '${addressDetails[0].ishandicap!}'),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Handicapped Type Id',
                      //   details: addressDetails[0].handicappedtypeid!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Citezenship Number',
                      //     details: '${addressDetails[0].citizenshipnumber}'),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Issued Place',
                      //   details: addressDetails[0].issuedat,
                      // ),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Issued Date',
                      //   details: addressDetails[0].issueddate,
                      // ),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Verified by',
                      //   details: addressDetails[0].verifiedby,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Interested Field',
                      //     details: addressDetails[0].interestedfieldid!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Handicap?',
                      //     details: addressDetails[0].istakingtraining!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Professional Status',
                      //     details: addressDetails[0].professionalstatus!),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Duration Of Activities',
                      //   details: addressDetails[0].durationofactivities!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Children Name',
                      //     details: addressDetails[0].name!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Family Details Id?',
                      //     details: addressDetails[0].familydetailid!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Child Gender',
                      //     details: addressDetails[0].childrengender!),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Children Date OF Birth',
                      //   details: addressDetails[0].childrendob!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Blood Group',
                      //     details: addressDetails[0].childrenbloodgroup!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Birth Place',
                      //     details: addressDetails[0].childrenbirthplace!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Birth Weight',
                      //     details: '${addressDetails[0].chilrenbirthweight!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Birth Conditions',
                      //     details: addressDetails[0].childrenbirthcondition!),

                      // AddressCallMethod(addressDetails,
                      //     title: 'Is BCG Vaccinated?',
                      //     details:
                      //         '${addressDetails[0].childrenisBCGvaccinated!}'),

                      // AddressCallMethod(addressDetails,
                      //     title: 'Is DPT H_HPB Vaccinated?',
                      //     details:
                      //         '${addressDetails[0].childrenisDPTHEPBvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is OPV Vaccinated?',
                      //     details:
                      //         '${addressDetails[0].childrenisOPVvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is PCV Vaccinated?',
                      //     details:
                      //         '${addressDetails[0].childrenisPCVvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is IPV Vaccinated?',
                      //     details:
                      //         '${addressDetails[0].childrenisIPVvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is MR Vaccinated?',
                      //     details: '${addressDetails[0].childrenisMRvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is JE Vaccinated?',
                      //     details: '${addressDetails[0].childrenisJEvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is TD Vaccinated?',
                      //     details: '${addressDetails[0].childrenisTDvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Genetic Disease Issues?',
                      //     details:
                      //         '${addressDetails[0].childrenisgeneticdiseaseissue!}'),

                      // AddressCallMethod(addressDetails,
                      //     title: 'Genetic Disease Descrption',
                      //     details: addressDetails[0]
                      //         .childrengeneticdiseasedescription!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Covid Vaccinated?',
                      //     details:
                      //         '${addressDetails[0].childreniscovidvaccinated!}'),

                      // AddressCallMethod(addressDetails,
                      //     title: 'Vaccine Details',
                      //     details: addressDetails[0].childrenvaccinedetails!),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Vaccine Dose',
                      //   details: addressDetails[0].childrenvacinedose!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Blood Group',
                      //     details: addressDetails[0].healthbloodgroup!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Birth Place',
                      //     details: addressDetails[0].birthplace!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Birth Weight',
                      //     details: '${addressDetails[0].birthweight!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Birth Conditions',
                      //     details: addressDetails[0].birthcondition!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Below 5 Vaccinated?',
                      //     details: '${addressDetails[0].isbelowvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Covid Vaccinated?',
                      //     details: '${addressDetails[0].iscovidvaccinated!}'),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Is Genetic Disease Issues?',
                      //     details: addressDetails[0].isgeneticdiseaseissue!),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Vaccine Details',
                      //     details: addressDetails[0].vaccinedetails!),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Vaccine Dose',
                      //   details: addressDetails[0].vacinedose!,
                      // ),
                      // AddressCallMethod(addressDetails,
                      //     title: 'Genetic Disease Descrption',
                      //     details: addressDetails[0].geneticdiseasedescription!),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
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
                    child: Column(children: [
                      // AddressCallMethod(addressDetails,
                      //     title: 'Latitude', details: addressDetails[0].latitude!),
                      // // AddressCallMethod(addressDetails,
                      // //     title: 'Is Handicap?',
                      // //     details: addressDetails[0].ishandicap!),
                      // AddressCallMethod(
                      //   addressDetails,
                      //   title: 'Longtitude',
                      //   details: addressDetails[0].longitude!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () async {
                        var url =
                            Uri.parse('https://reqbin.com/echo/post/json');
                        var response = await http.post(
                          url,
                          headers: {
                            "Accept": "application/json; charset=utf-8",
                            "Access-Control-Allow-Origin":
                                "*", // Required for CORS support to work
                            "Access-Control-Allow-Methods":
                                "POST, GET, OPTIONS",
                            HttpHeaders.contentTypeHeader: "application/json",
                          },
                          // body: json.encode(personalAddress)
                        );
                        print(response.body);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      elevation: 5.0,
                      child: Text('Submit'),
                      color: Color(0xFF00a2e8),
                      textColor: Colors.black,
                    ),
                  ),
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
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        style: TextStyle(fontSize: 13, color: Colors.black),
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
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        style: TextStyle(fontSize: 13, color: Colors.black),
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
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        style: TextStyle(fontSize: 13, color: Colors.black),
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
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        style: TextStyle(fontSize: 13, color: Colors.black),
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
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        style: TextStyle(fontSize: 13, color: Colors.black),
      ),
    ]);
  }
}
