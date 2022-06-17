import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';
import 'package:palika/screens/google_map.dart';

class googlemapProfile extends StatefulWidget {
  static const routeName = "googlemap-form";

  @override
  State<googlemapProfile> createState() => _googlemapProfileState();
}

class _googlemapProfileState extends State<googlemapProfile> {
  late LocationPermission permission;
  Position? position;
  final _form = GlobalKey<FormState>();

  final longitude = TextEditingController();
  final latitude = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Google Map',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: longitude,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Longitude',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Longitude',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  controller: latitude,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Latitude',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Latitude"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () async {
                        permission = await Geolocator.requestPermission();
                        if (permission == LocationPermission.denied) {
                          permission = await Geolocator.requestPermission();
                        } else if (permission ==
                            LocationPermission.deniedForever) {
                          await Geolocator.openAppSettings();
                        }
                        if (permission == LocationPermission.whileInUse ||
                            permission == LocationPermission.always) {
                          position = await Geolocator.getCurrentPosition();
                        }

                        if (position != null) {
                          // List<Placemark> placemarks = await placemarkFromCoordinates(position!.latitude, position!.longitude);
                          // print(placemarks);

                          Get.to(
                              () => MapSample(
                                  position!.latitude, position!.longitude),
                              transition: Transition.leftToRight);
                        }
                      },
                      child: Text('Open Map')),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 50,
                  width: 80,
                  child: MaterialButton(
                    onPressed: () async {
                      _form.currentState!.save();
                      _form.currentState!.validate();
                      FocusScope.of(context).unfocus();
                      final googleForm = formModel(
                        latitude: double.parse(latitude.text.trim()),
                        longitude: double.parse(longitude.text.trim()),
                      );
                      var jsonData = googleForm.toJson();



                      final response = ref
                          .read(formModelProvider.notifier)
                          .addForm(googleForm);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 5.0,
                    child: Text('Save as Draft'),
                    color: Color(0xFF00a2e8),
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    });
  }
}
