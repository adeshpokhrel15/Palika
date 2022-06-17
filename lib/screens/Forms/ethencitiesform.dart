import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

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
                title: Center(
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
                  icon: Icon(Icons.arrow_back, color: Colors.black),
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
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Nationalism and Religion',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Nationality is required';
                                  }

                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: nationality,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Nationality',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                    ),
                                    hintText: " Nationality"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Religion is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: religion,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Religion',
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Religion ",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Ethnic group is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: ethnicgroup,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Ethnic group',
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Ethnic group",
                                ),
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
                                    _form.currentState!.save();
                                    _form.currentState!.validate();
                                    FocusScope.of(context).unfocus();
                                    final ethencitiesForm = formModel(
                                      nationalismandreligion:
                                          natrel.text.trim(),
                                      nationality: nationality.text.trim(),
                                      religion: religion.text.trim(),
                                      ethnicgroup: ethnicgroup.text.trim(),
                                    );

                                    var jsonData = ethencitiesForm.toJson();


                                    final response = ref
                                        .read(formModelProvider.notifier)
                                        .addForm(ethencitiesForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  child: Text('Save as Draft'),
                                  color: Color(0xFF00a2e8),
                                  textColor: Colors.black,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))));
    });
  }
}
