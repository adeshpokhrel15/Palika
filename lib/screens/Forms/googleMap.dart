import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/providers/Hive%20Providers/googleMapProvider.dart';

import '../locations/google_map.dart';

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
          title: const Center(
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
            icon: const Icon(Icons.arrow_back, color: Colors.black),
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
              padding: const EdgeInsets.all(10),
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
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Longitude',
                  ),
                ),
                const SizedBox(
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
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Latitude"),
                ),
                const SizedBox(
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
                      child: const Text('Open Map')),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 50,
                  width: 80,
                  child: MaterialButton(
                    onPressed: () async {
                      _form.currentState!.save();
                      _form.currentState!.validate();

                      final googleForm = GoogleHiveModel(
                        latitude: double.parse(latitude.text.trim()),
                        longitude: double.parse(longitude.text.trim()),
                      );
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK'))
                                ],
                                title: const Text('Success'),
                                contentPadding: const EdgeInsets.all(20.0),
                                content:
                                    const Text('Addedd sucessfully in Draft'),
                              ));
                      var jsonData = googleForm.toJson();

                      final response = ref
                          .read(googleHiveModelProvider.notifier)
                          .addForm(googleForm);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 5.0,
                    color: const Color(0xFF00a2e8),
                    textColor: Colors.black,
                    child: const Text('Save as Draft'),
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
