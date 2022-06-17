import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

class extraactivitiesProfile extends StatefulWidget {
  static const routeName = 'activities-form';
  @override
  State<extraactivitiesProfile> createState() => _extraactivitiesProfileState();
}

class _extraactivitiesProfileState extends State<extraactivitiesProfile> {
  final _form = GlobalKey<FormState>();

  final interestedfield = TextEditingController();
  final professionalstatus = TextEditingController();

  final durationofactivities = TextEditingController();
  bool checktraining = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Extra Cariculum Activities',
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
                  controller: interestedfield,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Interested field is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Interested field',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Interested field',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Handicapped?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: checktraining,
                      onChanged: (value) {
                        setState(() {
                          checktraining = !checktraining;
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
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Professional status is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: professionalstatus,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Professional status',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Professional status"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Duration of activities is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: durationofactivities,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Duration of activities',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Duration of activities"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 80,
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
                      final extraForm = formModel(
                        interestedfieldid: interestedfield.text.trim(),
                        professionalstatus: professionalstatus.text.trim(),
                        durationofactivities: durationofactivities.text.trim(),
                        istakingtraining: checktraining,
                      );
                      var jsonData = extraForm.toJson();

                      final response = ref
                          .read(formModelProvider.notifier)
                          .addForm(extraForm);
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

  // List<Widget> buildTraining() {
  //   List<Widget> widgetss = [
  //     CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: _checktraining,
  //       title: Text('Yes'),
  //       onChanged: (value) => setState(
  //         (() => _checktraining = true),
  //       ),
  //     ),
  //     CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: !_checktraining,
  //       title: Text('No'),
  //       onChanged: (value) => setState(
  //         (() => _checktraining = false),
  //       ),
  //     ),
  //   ];

  //   return widgetss;
  // }
}
