import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/workinghive.dart';
import 'package:palika/models/jobTypes.dart';
import 'package:palika/providers/Hive%20Providers/workingProvider.dart';
import 'package:palika/providers/formProvider.dart';
import 'package:palika/providers/jobTypesProvider.dart';

class workingform extends StatefulWidget {
  static const routeName = 'working-form';

  @override
  State<workingform> createState() => _workingformState();
}

class _workingformState extends State<workingform> {
  final _form = GlobalKey<FormState>();

  final jobtype = TextEditingController();

  final joborganizationController = TextEditingController();

  final organizationaddressController = TextEditingController();

  final annualincomeController = TextEditingController();

  final designationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Working Details',
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
                              FutureBuilder<List<Jobtypes>>(
                                future: ApiJobTypes().JobTypesgetData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Jobtypes> data = snap.data!;
                                    return DropdownButtonFormField<Jobtypes>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Job Types',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "Job type"),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.jobtypeNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          jobtype.text =
                                              value!.jobtypeNepaliname;
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Job Organization is required';
                                  }

                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: joborganizationController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Job Organization',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                    ),
                                    hintText: " Job Organization"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Organization Address is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: organizationaddressController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Organization Address ',
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Organization Address ",
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
                                    return 'Annual Income is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: annualincomeController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Annual Income'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Designation ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: designationController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Designation',
                                  prefixIcon: Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Designation",
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                child: MaterialButton(
                                  onPressed: () async {
                                    _form.currentState!.save();
                                    _form.currentState!.validate();

                                    final workingForm = WorkingHiveModel(
                                        jobtype: jobtype.text.trim(),
                                        joborganization:
                                            joborganizationController.text
                                                .trim(),
                                        organizationaddress:
                                            organizationaddressController.text
                                                .trim(),
                                        designation:
                                            designationController.text.trim(),
                                        annualincome: double.parse(
                                            annualincomeController.text
                                                .trim()));
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

                                    var jsonData = workingForm.toJson();

                                    final response = ref
                                        .read(workingHiveModelProvider.notifier)
                                        .addForm(workingForm);
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
