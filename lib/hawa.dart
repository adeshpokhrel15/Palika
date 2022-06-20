import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/districts.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/models/localBodies.dart';
import 'package:palika/models/provience.dart';
import 'package:palika/providers/districtsProvider.dart';
import 'package:palika/providers/formProvider.dart';
import 'package:palika/providers/localBodyProvider.dart';
import 'package:palika/providers/provienceProvider.dart';

class AAAaddressForm extends StatefulWidget {
  static const routeName = 'address-form';

  @override
  State<AAAaddressForm> createState() => _AAAaddressForm();
}

class _AAAaddressForm extends State<AAAaddressForm> {
  final _form = GlobalKey<FormState>();

  final tempProv = TextEditingController();

  final tempDist = TextEditingController();

  final tempMunci = TextEditingController();

  final temoWard = TextEditingController();

  final tempTol = TextEditingController();

  final tempBno = TextEditingController();

  final permProv = TextEditingController();

  final permDist = TextEditingController();

  final permMunci = TextEditingController();

  final permWard = TextEditingController();

  final permTol = TextEditingController();
  final permBnoadd = TextEditingController();

  final tempward = TextEditingController();
  final permward = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Form',
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
                            Center(
                              child: Text(
                                'Temporary Address',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FutureBuilder<List<DistrictModel>>(
                              future: Api().getData(),
                              builder: (context, snap) {
                                if (snap.hasData) {
                                  final List<DistrictModel> data = snap.data!;
                                  return DropdownButtonFormField<DistrictModel>(
                                      menuMaxHeight: 400,
                                      iconSize: 50,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          labelText: 'District',
                                          prefixIcon: const Icon(
                                            Icons.email,
                                            color: Colors.orange,
                                          ),
                                          hintText: " District Name"),
                                      items: [
                                        ...data.map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e.nepaliName),
                                          ),
                                        )
                                      ],
                                      onChanged: (value) {
                                        permDist.text = value!.nepaliName;
                                      });
                                } else {
                                  return Container();
                                }
                              },
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
                                            contentPadding:
                                                const EdgeInsets.all(20.0),
                                            content: const Text(
                                                'Addedd sucessfully in Draft'),
                                          ));
                                  _form.currentState!.save();
                                  _form.currentState!.validate();
                                  FocusScope.of(context).unfocus();
                                  final addressForm = formModel(
                                    tempProv: tempProv.text.trim(),
                                    tempMuni: tempMunci.text.trim(),
                                    tempdistrict: tempDist.text.trim(),
                                    tempstreettol: tempTol.text.trim(),
                                    tempblockno: int.parse(tempBno.text.trim()),
                                    permProv: permProv.text.trim(),
                                    permMuni: permMunci.text.trim(),
                                    permdistrict: permDist.text.trim(),
                                    permstreettol: permTol.text.trim(),
                                    permblocknoaddress:
                                        int.parse(permBnoadd.text.trim()),
                                  );
                                  var jsonData = addressForm.toJson();

                                  final response = ref
                                      .read(formModelProvider.notifier)
                                      .addForm(addressForm);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0)),
                                elevation: 5.0,
                                child: Text('Save as Draft'),
                                color: Color(0xFF00a2e8),
                                textColor: Colors.black,
                              ),
                            ),
                          ]),
                    ),
                  )))));
    });
  }
}
