import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:palika/Hive/personalhive.dart';

import 'package:palika/providers/Hive%20Providers/personalProvider.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;

import '../../models/Api Models/bloodGroup.dart';
import '../../models/Api Models/genders.dart';
import '../../providers/Api Providers/bloodProvider.dart';
import '../../providers/Api Providers/genderProvider.dart';

class personalForm extends StatefulWidget {
  static const routeName = 'personal-form';

  @override
  State<personalForm> createState() => _personalFormState();
}

enum SingingCharacter { male, female, others }

class _personalFormState extends State<personalForm> {
  final firstname = TextEditingController();
  final middlename = TextEditingController();
  final lastname = TextEditingController();
  final mailController = TextEditingController();
  final ageController = TextEditingController();
  final dobController = TextEditingController();
  final htiController = TextEditingController();
  final mobileController = TextEditingController();
  final panController = TextEditingController();
  final bloodgroupController = TextEditingController();
  final _form = GlobalKey<FormState>();
  final genderPersonal = TextEditingController();
  final bloodgroupPersonal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                  child: Text(
                    'Personal Form',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: firstname,
                            textCapitalization: TextCapitalization.words,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Firstname is required';
                              }
                              if (val.length > 30) {
                                return 'maximum user length is 30';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'First Name',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              hintText: 'Enter your First Name',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: middlename,
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Middle Name',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              hintText: 'Enter your middle Name',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: lastname,
                            textCapitalization: TextCapitalization.words,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'FLastname is required';
                              }
                              if (val.length > 30) {
                                return 'maximum user length is 30';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Last Name',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              hintText: 'Enter your Last Name',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Date of Birth',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              InkWell(
                                child: const Icon(
                                  Icons.add_circle,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                onTap: () {
                                  picker.showCupertinoDatePicker(
                                    context: context,
                                    initialDate: NepaliDateTime.now(),
                                    firstDate: NepaliDateTime(2000),
                                    lastDate: NepaliDateTime(2090),
                                    language: Language.english,
                                    dateOrder: picker.DateOrder.mdy,
                                    onDateChanged: (newDate) {
                                      setState(() {
                                        dobController.text =
                                            newDate.toIso8601String();
                                      });
                                      dobController.text =
                                          newDate.toIso8601String();
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 10,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    dobController.text,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'email is required';
                              }
                              if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(val)) {
                                return 'Please a valid Email';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Email',
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.orange,
                                ),
                                hintText: "Test@gmail.com"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please enter Age ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            controller: ageController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Age',
                              prefixIcon: const Icon(
                                Icons.calendar_today,
                                color: Colors.lightBlue,
                              ),
                              hintText: "Enter your Age",
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
                                return 'Please enter handicapped id ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: htiController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Handicapped Type Id'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FutureBuilder<List<Gender>>(
                            future: ApiGender().getData(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<Gender> data = snap.data!;

                                return DropdownButtonFormField<Gender>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Select Gender',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: "Gender "),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.nepalNamegender),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      genderPersonal.text =
                                          value!.nepalNamegender;

                                      print(genderPersonal.text);
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
                                return 'Please enter phone no ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: mobileController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Mobile Number',
                              prefixIcon: const Icon(
                                Icons.call,
                                color: Colors.black,
                              ),
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
                                return 'Please enter pan number ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: panController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Pan Number',
                              prefixIcon: const Icon(
                                Icons.pin,
                                color: Colors.blue,
                              ),
                              hintText: "Enter your Pan Number",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FutureBuilder<List<BloodGroup>>(
                            future: Apiblood().getData(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<BloodGroup> data = snap.data!;

                                return DropdownButtonFormField<BloodGroup>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Blood Group',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: " Blood Group "),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.bloodname),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      bloodgroupPersonal.text =
                                          value!.bloodname;

                                      print(bloodgroupPersonal.text);
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
                              onPressed: () {
                                _form.currentState!.save();
                                _form.currentState!.validate();
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
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                              'Addedd sucessfully in Draft'),
                                        ));

                                final personalForm = PersonalHiveModel(
                                  firstNamepersonal: firstname.text.trim(),
                                  lastNamepersonal: lastname.text.trim(),
                                  middleNamepersonal: middlename.text.trim(),
                                  emailpersonal: mailController.text.trim(),
                                  pannumberpersonal: panController.text.trim(),
                                  mobilenumberpersonal:
                                      int.parse(mobileController.text.trim()),
                                  agepersonal:
                                      int.parse(ageController.text.trim()),
                                  handicappedIDPersonal:
                                      htiController.text.trim(),
                                  genderpersonal: genderPersonal.text.trim(),
                                  bloodgroupPersonal: bloodgroupPersonal.text,
                                  dateofbirthpersonal: dobController.text,
                                );

                                var jsonData = personalForm.toJson();
                                //     print(jsonData);

                                // var url = Uri.parse(
                                //     'https://reqbin.com/echo/post/json');
                                // var response = await http.post(
                                //   url,
                                //   headers: {
                                //     "Accept":
                                //         "application/json; charset=utf-8",
                                //     "Access-Control-Allow-Origin":
                                //         "*", // Required for CORS support to work
                                //     "Access-Control-Allow-Methods":
                                //         "POST, GET, OPTIONS",
                                //     HttpHeaders.contentTypeHeader:
                                //         "application/json",
                                //   },
                                //   body: json.encode(personalForm),
                                // );
                                //       print(response.body);

                                final response1 = ref
                                    .read(personalHiveModelProvider.notifier)
                                    .addForm(personalForm);
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
                  ))));
    });
  }
}
