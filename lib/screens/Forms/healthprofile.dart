import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

import '../../models/bloodGroup.dart';
import '../../providers/bloodProvider.dart';

class healthProfileForm extends StatefulWidget {
  static const routeName = 'healthprofile-form';

  @override
  State<healthProfileForm> createState() => _healthProfileFormState();
}

class _healthProfileFormState extends State<healthProfileForm> {
  final _form = GlobalKey<FormState>();
  int ind = 0;
  final bloods = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];
  final bloodgroupHealth = TextEditingController();
  final birthplace = TextEditingController();
  final birthweight = TextEditingController();
  final birthconditioins = TextEditingController();
  final geneticdiseasedescrption = TextEditingController();
  final vaccinedetails = TextEditingController();
  final vaccinedoes = TextEditingController();

  bool _checkisbelowVaccinated = false;
  bool _checkiscoVVidVaccinated = false;
  bool _checkisgeneticaccinated = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Health Profile',
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
                FutureBuilder<List<BloodGroup>>(
                  future: Apiblood().getData(),
                  builder: (context, snap) {
                    if (snap.hasData) {
                      final List<BloodGroup> data = snap.data!;
                      return DropdownButtonFormField<BloodGroup>(
                          menuMaxHeight: 400,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Blood Group',
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.orange,
                              ),
                              hintText: " Blood Group "),
                          items: [
                            // ...data.map(
                            //   (e) => DropdownMenuItem(
                            //     value: e,
                            //     child: Text(e.bloodname),
                            //   ),
                            // )

                            for (var i = 0; i < data.length; i++)
                              DropdownMenuItem(
                                value: data[i],
                                child: Text(data[i].bloodname),
                              ),
                          ],
                          onChanged: (value) {
                            bloodgroupHealth.text = '${value!.bloodid}';
                          });
                    } else {
                      return const LinearProgressIndicator();
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: birthplace,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Blace place is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Blace place',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Blace place',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: birthweight,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Birth Weight',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Birth Weight',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: birthconditioins,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Birth Conditions',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Birth Conditions',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Below 5 Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkisbelowVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkisbelowVaccinated = !_checkisbelowVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Covid Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkiscoVVidVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkiscoVVidVaccinated = !_checkiscoVVidVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Genetic Disease Issues?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkisgeneticaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkisgeneticaccinated = !_checkisgeneticaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: geneticdiseasedescrption,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Genetic disease description',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Genetic disease description',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Vaccine details is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: vaccinedetails,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Vaccine details ',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Vaccine details "),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Vaccine dose is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: vaccinedoes,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Vaccine dose ',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Vaccine dose "),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: MaterialButton(
                    onPressed: () async {
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
                      _form.currentState!.save();
                      _form.currentState!.validate();
                      FocusScope.of(context).unfocus();
                      final healthProfile = formModel(
                        birthplace: birthplace.text.trim(),
                        birthweight: int.parse(birthweight.text.trim()),
                        birthcondition: birthconditioins.text.trim(),
                        geneticdiseasedescription:
                            geneticdiseasedescrption.text.trim(),
                        vaccinedetails: vaccinedetails.text.trim(),
                        vacinedose: vaccinedoes.text.trim(),
                        isbelowvaccinated: _checkisbelowVaccinated,
                        iscovidvaccinated: _checkiscoVVidVaccinated,
                        isgeneticdiseaseissue: _checkisgeneticaccinated,
                        healthbloodgroup: bloods[ind].trim(),
                      );

                      var jsonData = healthProfile.toJson();

                      final response = ref
                          .read(formModelProvider.notifier)
                          .addForm(healthProfile);
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

  Widget buildbloodpicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (ind) {
                setState(() {
                  this.ind = ind;
                });
                final blood = bloods[ind];
                print(blood);
              },
              children: bloods.map((blood) {
                return Center(
                  child: Text(
                    blood,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                );
              }).toList()),
        ),
      );
}
