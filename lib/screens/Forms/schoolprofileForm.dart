import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/schoolhive.dart';
import 'package:palika/providers/Hive%20Providers/schoolProvider.dart';

import '../../models/Api Models/childrenSchoolSchemes.dart';
import '../../models/Api Models/schoolTypes.dart';
import '../../providers/Api Providers/childrenSchemeType.dart';
import '../../providers/Api Providers/schooltypeProvider.dart';

class schoolprofile extends StatelessWidget {
  static const routName = "schoolprofile-form";
  final _form = GlobalKey<FormState>();

  final schoolname = TextEditingController();

  final schooltypeid = TextEditingController();

  final dresscode = TextEditingController();

  final dresscondition = TextEditingController();

  final childrenschemaid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                  child: Text(
                    'School Profile',
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
                                controller: schoolname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'School name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'School name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'School name ',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<Schooltype>>(
                                future: Apischool().getData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Schooltype> data = snap.data!;
                                    return DropdownButtonFormField<Schooltype>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: ' School Type',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "  School Type  "),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child:
                                                  Text(e.schooltypeNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          schooltypeid.text =
                                              '${value!.indexschooltype}';
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Dress code is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: dresscode,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Dress code ',
                                  prefixIcon: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Dress code",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Dress condition is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: dresscondition,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Dress condition',
                                    hintText: 'Dress condition'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<Childrenschemetype>>(
                                future: ApichildrenSchemeType().getData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Childrenschemetype> data =
                                        snap.data!;
                                    return DropdownButtonFormField<
                                            Childrenschemetype>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: ' Children Scheme Type',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText:
                                                "  Children Scheme Type  "),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e
                                                  .childrenschemetypeNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          schooltypeid.text = value!
                                              .childrenschemetypeenglishname;
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: MaterialButton(
                                  onPressed: () async {
                                    _form.currentState!.save();
                                    _form.currentState!.validate();

                                    final schoolprofileForm = SchoolHiveModel(
                                      schoolname: schoolname.text.trim(),
                                      schooltypeid: schooltypeid.text.trim(),
                                      dresscode: dresscode.text.trim(),
                                      dresscondition:
                                          dresscondition.text.trim(),
                                      childenschoolschemeid:
                                          childrenschemaid.text.trim(),
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

                                    var jsonData = schoolprofileForm.toJson();

                                    final response = ref
                                        .read(schoolHiveModelProvider.notifier)
                                        .addForm(schoolprofileForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  color: const Color(0xFF00a2e8),
                                  textColor: Colors.black,
                                  child: Text('Save as Draft'),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))));
    });
  }
}
