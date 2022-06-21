import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/hawa.dart';
import 'package:palika/models/formModel.dart';
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
import 'package:palika/screens/Forms/hqhqhq.dart';
import 'package:palika/screens/Forms/personalform.dart';
import 'package:palika/screens/Forms/schoolprofileForm.dart';
import 'package:palika/screens/Forms/workingform.dart';
import 'package:palika/screens/buttomNavigationbar.dart';

final boxB = Provider<List<formModel>>((ref) => []);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter(); //hive initalize
  Hive.registerAdapter(formModelAdapter()); // hive register
  final box = await Hive.openBox<formModel>('FormModel'); //hive open box
  // await Hive.openBox<Transistion>('tempTrans');
  runApp(
    ProviderScope(
      overrides: [boxB.overrideWithValue(box.values.toList())],
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
            //businessprofile(),
            //personalForm(),
            //AAAaddressForm(),
            //MyDropDown(),

            MyHomePage(),
        //   AAMyHomePage(),
        //CustomScreen(),
        //appearenceProfile(),
        //storage(),
        //transistionShow(),

        //healthProfileForm(),
        //childrenhealthProfile(),
        //personalForm(),
        //transistionForm(),
        //foodconsumptionProfile(),
        // appearanceProfile(),
        //addressForm(),
        //  dashBoard(),

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
