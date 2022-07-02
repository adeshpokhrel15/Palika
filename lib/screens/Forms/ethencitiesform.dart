import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/providers/Hive%20Providers/ethencitiesProvider.dart';

import '../../models/Api Models/ethnicGroup.dart';
import '../../models/Api Models/nationalities.dart';
import '../../models/Api Models/religions.dart';
import '../../providers/Api Providers/ethinicGroup.dart';
import '../../providers/Api Providers/nationalities.dart';
import '../../providers/Api Providers/religionsProvider.dart';

class ethencitiesform extends StatelessWidget {
  static const routName = 'ethencities-form';
  final _form = GlobalKey<FormState>();

  final natrel = TextEditingController();

  final nationality = TextEditingController();

  final religion = TextEditingController();

  final ethnicgroup = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                  child: Text(
                    'Ethencities',
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
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: natrel,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Nationalism and Religion is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Nationalism and Religion',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Nationalism and Religion',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<Nationalities>>(
                                future:
                                    Apinationalities().nationalitiesgetData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Nationalities> data = snap.data!;
                                    return DropdownButtonFormField<
                                            Nationalities>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Nationalities',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "Nationalities"),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                  e.nationalitiesnepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          nationality.text =
                                              value!.nationalitiesenglishname;
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<Ethinicgroup>>(
                                future: Apiethinicgroup().ethinicgroupgetData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Ethinicgroup> data = snap.data!;
                                    return DropdownButtonFormField<
                                            Ethinicgroup>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Ethinic Group',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "  Ethinic Group"),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                  e.ethinicgroupnepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          ethnicgroup.text =
                                              value!.ethinicgroupnepaliname;
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
                              ),
                              const SizedBox(height: 20),
                              FutureBuilder<List<Religions>>(
                                future: Apireligions().religionsgetData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Religions> data = snap.data!;
                                    return DropdownButtonFormField<Religions>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Religions',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: " Religions "),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child:
                                                  Text(e.religionsNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          religion.text =
                                              value!.religionsenglishname;
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: MaterialButton(
                                  onPressed: () async {
                                    _form.currentState!.save();
                                    _form.currentState!.validate();
                                    final ethencitiesForm =
                                        EthencitiesHiveModel(
                                      nationalismandreligion:
                                          natrel.text.trim(),
                                      nationality: nationality.text.trim(),
                                      religion: religion.text.trim(),
                                      ethnicgroup: ethnicgroup.text.trim(),
                                    );
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('OK'))
                                              ],
                                              title: const Text('Success'),
                                              contentPadding:
                                                  const EdgeInsets.all(20.0),
                                              content: const Text(
                                                  'Addedd sucessfully in Draft'),
                                            ));

                                    var jsonData = ethencitiesForm.toJson();

                                    final response = ref
                                        .read(ethencitiesHiveModelProvider
                                            .notifier)
                                        .addForm(ethencitiesForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  color: const Color(0xFF00a2e8),
                                  textColor: Colors.black,
                                  child: const Text('Save as Draft'),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))));
    });
  }
}
