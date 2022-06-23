import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/businesshive.dart';
import 'package:palika/Hive/childhlthhive.dart';
import 'package:palika/Hive/childrenhive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/Hive/expensshive.dart';
import 'package:palika/Hive/extrahive.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/Hive/healthhive.dart';
import 'package:palika/Hive/househive.dart';
import 'package:palika/Hive/personalhive.dart';
import 'package:palika/Hive/schoolhive.dart';
import 'package:palika/Hive/workinghive.dart';
import 'package:palika/screens/Forms/addressform.dart';
import 'package:palika/screens/Forms/appearenceform.dart';
import 'package:palika/screens/Forms/businessprofileForm.dart';
import 'package:palika/screens/Forms/childrenDetailsform.dart';
import 'package:palika/screens/Forms/childrenhealth.dart';
import 'package:palika/screens/Forms/citizenshipdetailsForm.dart';
import 'package:palika/screens/Forms/ethencitiesform.dart';
import 'package:palika/screens/Forms/expenserProfileform.dart';
import 'package:palika/screens/Forms/extraactivitiesform.dart';
import 'package:palika/screens/Forms/familyForm.dart';
import 'package:palika/screens/Forms/foodconsumptionProfile.dart';
import 'package:palika/screens/Forms/googleMap.dart';
import 'package:palika/screens/Forms/healthprofile.dart';
import 'package:palika/screens/Forms/houseform.dart';
import 'package:palika/screens/Forms/personalform.dart';
import 'package:palika/screens/Forms/schoolprofileForm.dart';
import 'package:palika/screens/Forms/workingform.dart';
import 'package:palika/screens/buttomNavigationbar.dart';

final boxAddress = Provider<List<AddressHiveModel>>((ref) => []);
final boxAppearence = Provider<List<AppearenceHiveModel>>((ref) => []);
final boxBussiness = Provider<List<BusinessHiveModel>>((ref) => []);
final boxChildhealth = Provider<List<ChildHealthHiveModel>>((ref) => []);
final boxChilddetails = Provider<List<ChildDetailsHiveModel>>((ref) => []);
final boxCitizen = Provider<List<CitizensHiveModel>>((ref) => []);
final boxEthcities = Provider<List<EthencitiesHiveModel>>((ref) => []);
final boxExpenss = Provider<List<ExpenssHiveModel>>((ref) => []);
final boxExtra = Provider<List<ExtraHiveModel>>((ref) => []);
final boxFamily = Provider<List<FamilyModel>>((ref) => []);
final boxFood = Provider<List<Foodmodel>>((ref) => []);
final boxGoogle = Provider<List<GoogleHiveModel>>((ref) => []);
final boxHealth = Provider<List<HealthHiveModel>>((ref) => []);
final boxHouse = Provider<List<Housemodel>>((ref) => []);
final boxPersonal = Provider<List<PersonalHiveModel>>((ref) => []);
final boxSchool = Provider<List<SchoolHiveModel>>((ref) => []);
final boxWorking = Provider<List<WorkingHiveModel>>((ref) => []);

// final boxB = Provider<List<personalHiveModel>>((ref) => []);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter(); //hive initalize
//  Hive.registerAdapter(formModelAdapter()); // hive register
//  final box = await Hive.openBox<personalHiveModel>(
  //    'PersonalHiveModel'); //hive open box
  // await Hive.openBox<Transistion>('tempTrans');
  runApp(
    ProviderScope(
      //   overrides: [boxB.overrideWithValue(box.values.toList())],
      child: ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // abc(),
            MyHomePage(),
        //settingPage(),
        routes: {
          personalForm.routeName: (context) => personalForm(),
          addressForm.routeName: (context) => addressForm(),
          familyform.routeName: (context) => familyform(),
          workingform.routeName: (context) => workingform(),
          ethencitiesform.routName: (context) => ethencitiesform(),
          expensesprofileform.routeName: (context) => expensesprofileform(),
          foodconsumptionProfile.routeName: (context) =>
              foodconsumptionProfile(),
          houseform.routeName: (context) => houseform(),
          citizendetailsForm.routeName: (context) => citizendetailsForm(),
          businessprofile.routName: (context) => businessprofile(),
          schoolprofile.routName: (context) => schoolprofile(),
          appearenceProfile.routeName: (context) => appearenceProfile(),
          extraactivitiesProfile.routeName: (context) =>
              extraactivitiesProfile(),
          childrendetailsForm.routeName: (context) => childrendetailsForm(),
          googlemapProfile.routeName: (context) => googlemapProfile(),
          healthProfileForm.routeName: (context) => healthProfileForm(),
          childrenhealthProfile.routeName: (context) => childrenhealthProfile(),
        });
  }
}
