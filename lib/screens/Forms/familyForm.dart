import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/providers/Hive%20Providers/familyProvider.dart';

class familyform extends StatefulWidget {
  static const routeName = 'family-form';

  @override
  State<familyform> createState() => _familyformState();
}

class _familyformState extends State<familyform> {
  final _form = GlobalKey<FormState>();
  final fatherFirstname = TextEditingController();
  final fatherMiddlename = TextEditingController();
  final fatherLastname = TextEditingController();

  final motherFirstname = TextEditingController();
  final motherSecondname = TextEditingController();
  final motherLastname = TextEditingController();

  final grandfatherFirstname = TextEditingController();
  final grandfatherMiddlename = TextEditingController();
  final grandfatherLastname = TextEditingController();

  final grandmotherFirstname = TextEditingController();
  final grandmotherSecondname = TextEditingController();
  final grandmotherLastname = TextEditingController();

  final spousFirstename = TextEditingController();
  final spousMiddleename = TextEditingController();
  final spousLastename = TextEditingController();

  final sonFirstname = TextEditingController();
  final sonMiddlename = TextEditingController();
  final sonLastname = TextEditingController();

  final daughterFirstname = TextEditingController();
  final daughterMiddlename = TextEditingController();
  final daughterLastname = TextEditingController();

  final totalsonController = TextEditingController();
  final totaldaughterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                  child: Text(
                    'Family Form',
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
                                controller: fatherFirstname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Father first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Father First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Father First Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: fatherMiddlename,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Father Second Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Father Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: fatherLastname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Father last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Father Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Father Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: motherFirstname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Mother first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Mother First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Mother First Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: motherSecondname,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Mother Second Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Mother Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: motherLastname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Mother last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Mother Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Mother Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: spousFirstename,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Spouse first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Spouse First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Spouse First Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: spousMiddleename,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'SpouseSecond Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Spouse Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: spousLastename,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Spouse last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Spouse Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Spouse Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: grandfatherFirstname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Grandfather first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Grandfather First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Grandfather First Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: grandfatherMiddlename,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Grandfather Second Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Grandfather Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: grandfatherLastname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Grandfather last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Grandfather Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Grandfather Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: grandmotherFirstname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Grandmother first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Grandmother First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'GrandmotherFirst Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: grandmotherSecondname,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Grandmother Second Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Grandmother Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: grandmotherLastname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Grandmother last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Grandmother Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Grandmother Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: sonFirstname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Son first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Son First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Son first Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: sonMiddlename,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Son Second Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Son Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: sonLastname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Son last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Son Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Son Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: daughterFirstname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Daughter first name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Daughter First Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Daughter first Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: daughterMiddlename,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Daughter Second Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Daughter Second Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: daughterLastname,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Daughter last name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Daughter Last Name',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Daughter Last Name',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.emailAddress,
                                controller: totalsonController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Total Son',
                                  prefixIcon: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Total Son ",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.emailAddress,
                                controller: totaldaughterController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Total Daughter ',
                                  prefixIcon: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Total Daughter ",
                                ),
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

                                    final familyForm = FamilyModel(
                                      fatherFirstName:
                                          fatherFirstname.text.trim(),
                                      fatherMiddlename:
                                          fatherMiddlename.text.trim(),
                                      fatherLastname:
                                          fatherLastname.text.trim(),
                                      motherFirstName:
                                          motherFirstname.text.trim(),
                                      motherMiddlename:
                                          motherSecondname.text.trim(),
                                      motherLastname:
                                          motherLastname.text.trim(),
                                      spouseFirstName:
                                          spousFirstename.text.trim(),
                                      spouseMiddleName:
                                          spousMiddleename.text.trim(),
                                      spouseLastName:
                                          spousLastename.text.trim(),
                                      grandfatherFirstname:
                                          grandfatherFirstname.text.trim(),
                                      grandfatherMiddlename:
                                          grandfatherMiddlename.text.trim(),
                                      grandfatherLastname:
                                          grandfatherLastname.text.trim(),
                                      grandmotherFirstname:
                                          grandmotherFirstname.text.trim(),
                                      grandmotherMiddlename:
                                          grandfatherMiddlename.text.trim(),
                                      grandmotherLastname:
                                          grandmotherLastname.text.trim(),
                                      sonFirstname: sonFirstname.text.trim(),
                                      sonMiddlename: sonMiddlename.text.trim(),
                                      sonLastname: sonLastname.text.trim(),
                                      daughterFirstname:
                                          daughterFirstname.text.trim(),
                                      daughterMiddlename:
                                          daughterMiddlename.text.trim(),
                                      daughterLastname:
                                          daughterLastname.text.trim(),
                                      totalson: int.parse(
                                          totalsonController.text.trim()),
                                      totaldaughter: int.parse(
                                          totaldaughterController.text.trim()),
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

                                    var jsonData = familyForm.toJson();

                                    final response = ref
                                        .read(familyHiveModelProvider.notifier)
                                        .addForm(familyForm);
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
