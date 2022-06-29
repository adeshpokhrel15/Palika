import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palika/providers/provienceProvider.dart';
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
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class dashBoard extends StatefulWidget {
  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  int currentIndex = 0;
  bool hasInternet = false;

  ConnectivityResult result = ConnectivityResult.none;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Text(
                'Digital Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          body: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: [
                    cardmethod(
                        title: 'Personal',
                        image:
                            'https://th.bing.com/th/id/OIP.sZ57HGYrq8Vf-Kb01YXMZQHaGo?pid=ImgDet&rs=1',
                        routeName: personalForm.routeName),
                    cardmethod(
                        title: 'Address',
                        image:
                            'https://media.istockphoto.com/photos/cartoon-address-book-on-a-white-background-picture-id173682846?k=6&m=173682846&s=170667a&w=0&h=TMDGkmJHjNnfdIuEWA9FplWwTcoW4YcxUZHSWfAWHS4=',
                        routeName: addressForm.routeName),
                    cardmethod(
                        title: 'Family',
                        image:
                            'https://th.bing.com/th/id/R.15e93cca6d64155a85e946e9b0c00d0f?rik=IhWxsKz1Ey2pdA&pid=ImgRaw&r=0',
                        routeName: familyform.routeName),
                    cardmethod(
                        title: 'Working Details',
                        image:
                            'https://th.bing.com/th/id/OIP.XTzI1VBI5Skk9DrBKYA3hwHaHa?pid=ImgDet&rs=1',
                        routeName: workingform.routeName),
                    cardmethod(
                        title: 'Ethnicities',
                        image:
                            'https://th.bing.com/th/id/OIP.NkPhDatdN435qULtaAH-4AHaC0?pid=ImgDet&rs=1',
                        routeName: ethencitiesform.routName),
                    cardmethod(
                        title: 'Expenses Profile',
                        image:
                            'https://th.bing.com/th/id/OIP.eAXHj__1cZWzM21YWOD7ZwHaHa?pid=ImgDet&rs=1',
                        routeName: expensesprofileform.routeName),
                    cardmethod(
                        title: 'Food Consumption',
                        image:
                            'https://th.bing.com/th/id/OIP._nnxvjIUh7FiOg-ITtlWVQHaHv?pid=ImgDet&rs=1',
                        routeName: foodconsumptionProfile.routeName),
                    cardmethod(
                        title: 'House Details',
                        image:
                            'https://th.bing.com/th/id/OIP.Xg7xqArWOb0uNareYX9INQHaHa?pid=ImgDet&rs=1',
                        routeName: houseform.routeName),
                    cardmethod(
                        title: 'Citizenship Details',
                        image:
                            'https://th.bing.com/th/id/R.8c1697f47e872879caacff734c7727b1?rik=QxanUsRSMZwfOw&pid=ImgRaw&r=0',
                        routeName: citizendetailsForm.routeName),
                    cardmethod(
                        title: 'Business Profile',
                        image:
                            'https://th.bing.com/th/id/R.77f9af013149d558c4e730f54d1e8ec1?rik=jiAax7%2faPXbGTg&riu=http%3a%2f%2fp.motionelements.com%2fstock-video%2fbusiness%2fme6527947-business-cartoon-hd-a0005.jpg&ehk=RQZpx9kGz1lCG7pYo%2fzuIS8qgRBj5m9MAKxFTAs5aG0%3d&risl=&pid=ImgRaw&r=0',
                        routeName: businessprofile.routName),
                    cardmethod(
                        title: 'Extra Activities',
                        image:
                            'https://th.bing.com/th/id/OIP.CF-B6OOkmgLJiMCjMWAh-gHaE7?pid=ImgDet&rs=1',
                        routeName: extraactivitiesProfile.routeName),
                    cardmethod(
                        title: 'School Profile',
                        image:
                            'https://th.bing.com/th/id/R.e3649eed065b379b20d55bef40a156dc?rik=Dco%2bPUuvoeUy1w&riu=http%3a%2f%2fsetgis.net%2fimages%2fschool_cartoon.png&ehk=5PBS318jNLge5wN6Hk2CKDLUlesrktttR4AyklfU3nc%3d&risl=&pid=ImgRaw&r=0',
                        routeName: schoolprofile.routName),
                    cardmethod(
                        title: 'Appearence Profile',
                        image:
                            'https://th.bing.com/th/id/OIP.mMJKLLUwaFwtN2MktfSaAAHaEn?pid=ImgDet&rs=1',
                        routeName: appearenceProfile.routeName),
                    cardmethod(
                        title: 'Children Details',
                        image:
                            'https://th.bing.com/th/id/OIP.XwigfuFrDXe8ief9D0o0FwHaIa?pid=ImgDet&rs=1',
                        routeName: childrendetailsForm.routeName),
                    cardmethod(
                        title: 'Children Health',
                        image:
                            'https://th.bing.com/th/id/OIP.AG5iqB0QCsS_BSveyZGKVwHaEd?pid=ImgDet&rs=1',
                        routeName: childrenhealthProfile.routeName),
                    cardmethod(
                        title: 'Google Map',
                        image:
                            'https://th.bing.com/th/id/OIP.H_KBRkqdebToJdAGo0zK6gHaHH?pid=ImgDet&rs=1',
                        routeName: googlemapProfile.routeName),
                    cardmethod(
                        title: 'Health Profile',
                        image:
                            'https://th.bing.com/th/id/R.6d92929fa0f6af19444fb74f495bd3f6?rik=eVkadmpAKbnnJQ&riu=http%3a%2f%2fastrologer.swayamvaralaya.com%2fwp-content%2fuploads%2f2012%2f08%2fhealth1.jpg&ehk=BRlD7AaHMIK1Ftwpqwqkh6Ze5lj4RyDBUeyqmghogpQ%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                        routeName: healthProfileForm.routeName),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                shadowColor: Colors.blue,
              ),
              child: Text('Check'),
              onPressed: () async {
                hasInternet = await InternetConnectionChecker().hasConnection;
                result = await Connectivity().checkConnectivity();
                final text =
                    hasInternet ? 'Has Internet' : 'No Internet Connection';
                if (result == ConnectivityResult.mobile) {
                  showSimpleNotification(
                    Text('$text: Mobile Network'),
                  );
                } else if (result == ConnectivityResult.wifi) {
                  showSimpleNotification(
                    Text('$text: Wifi Network'),
                  );
                } else {
                  showSimpleNotification(
                    Text('$text: No Network'),
                  );
                }
              },
            )),
          ]),
        ),
      );
    });
  }

  cardmethod(
      {required String title,
      required String image,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                image,
                height: 128,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
            ],
          )),
    );
  }
}
