import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/Home/homehive.dart';
import 'package:uuid/uuid.dart';

import '../../providers/Core/HomePageProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? value;
  late TextEditingController homenameController;
  late TextEditingController homeaddressController;

  late TextEditingController homeidController;
  final _form = GlobalKey<FormState>();
  @override
  void initState() {
    homenameController = TextEditingController();
    homeaddressController = TextEditingController();
    homeidController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    homeidController.dispose();
    homenameController.dispose();
    homeaddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      // final check = ref.watch(dbProvider);
      return Scaffold(
        body: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'ID is required ';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: homeidController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'ID'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Name';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: homenameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Name'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Address ';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: homeaddressController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Address'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    _form.currentState!.save();
                    _form.currentState!.validate();
                    final check =
                        await ref.watch(dbProvider).getData(dbKey: 'list_data');

                    if (check == null) {
                      final HomeHiveModel myFormModel = HomeHiveModel(
                        homeaddress: homeaddressController.text,
                        homeid: const Uuid().v4(),
                        homename: homenameController.text,
                      );
                      List<HomeHiveModel> listForm = [];
                      listForm.add(myFormModel);
                      await ref.watch(dbProvider).saveData(
                          dbKey: 'list_data', data: jsonEncode(listForm));
                    } else {
                      final dbString = await ref
                          .watch(dbProvider)
                          .getData(dbKey: 'list_data');
                      final List result = json.decode(dbString);

                      List<HomeHiveModel> listForm =
                          result.map((e) => HomeHiveModel.fromJson(e)).toList();
                      final HomeHiveModel myFormModel = HomeHiveModel(
                        homeaddress: homeaddressController.text,
                        homeid: const Uuid().v4(),
                        homename: homenameController.text,
                      );
                      listForm.add(myFormModel);
                      await ref.watch(dbProvider).saveData(
                          dbKey: 'list_data', data: jsonEncode(listForm));
                    }
                  },
                  child: const Text('Save')),
            ]),
          ),
        ),
      );
    });
  }
}
