import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/providers/Hive%20Providers/citizenProvider.dart';
import 'package:palika/providers/formProvider.dart';

class citizendetailsForm extends StatefulWidget {
  static const routeName = 'citizendetails-form';

  @override
  State<citizendetailsForm> createState() => _citizendetailsFormState();
}

class _citizendetailsFormState extends State<citizendetailsForm> {
  final _form = GlobalKey<FormState>();

  final citizenshipnumber = TextEditingController();
  final issuedat = TextEditingController();
  final verifiedby = TextEditingController();
  final issueddate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Citizenship Details',
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
                              controller: citizenshipnumber,
                              textCapitalization: TextCapitalization.words,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Citizenship number is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Citizenship number',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                hintText: 'Citizenship number',
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
                                  return 'Isued place is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: issuedat,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Issued place',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  ),
                                  hintText: "Issued place"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      'Issued Date',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 43,
                                    ),
                                    InkWell(
                                      child: Icon(
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
                                              issueddate.text =
                                                  newDate.toIso8601String();
                                            });
                                            issueddate.text =
                                                newDate.toIso8601String();
                                          },
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
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
                                          issueddate.text,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Varification by is required ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: verifiedby,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Verified by',
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.lightBlue,
                                ),
                                hintText: "Verified by",
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

                                  final citizenshipForm = CitizensHiveModel(
                                    citizenshipnumber:
                                        citizenshipnumber.text.trim(),
                                    issuedat: issuedat.text.trim(),
                                    verifiedby: verifiedby.text.trim(),
                                    issueddate: issueddate.text.trim(),
                                  );
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

                                  var jsonData = citizenshipForm.toJson();

                                  final response = ref
                                      .read(citizenHiveModelProvider.notifier)
                                      .addForm(citizenshipForm);
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
                  ))));
    });
  }
}
