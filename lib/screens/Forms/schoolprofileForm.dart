import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

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
                title: Center(
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
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'School name ',
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
                                    return 'School type id is required';
                                  }

                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: schooltypeid,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'School type id',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                    ),
                                    hintText: "School type id"),
                              ),
                              SizedBox(
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
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Dress code",
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
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Children Schema id is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: childrenschemaid,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Children Schema id',
                                  prefixIcon: Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Children Schema id",
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
                                    FocusScope.of(context).unfocus();
                                    final schoolprofileForm = formModel(
                                      schoolname: schoolname.text.trim(),
                                      schooltypeid: schooltypeid.text.trim(),
                                      dresscode: dresscode.text.trim(),
                                      dresscondition:
                                          dresscondition.text.trim(),
                                      childenschoolschemeid:
                                          childrenschemaid.text.trim(),
                                    );
                                     var jsonData =schoolprofileForm.toJson();




                                    final response = ref
                                        .read(formModelProvider.notifier)
                                        .addForm(schoolprofileForm);
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
