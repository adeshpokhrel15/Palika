import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

class addressForm extends StatefulWidget {
  static const routeName = 'address-form';

  @override
  State<addressForm> createState() => _addressFormState();
}

class _addressFormState extends State<addressForm> {
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
  int ind = 0;
  int index = 0;

  final tempwards = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  final permwards = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Address Form',
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
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: tempProv,
                              textCapitalization: TextCapitalization.words,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'provience is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Provience',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                hintText: 'Provience Name',
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
                                  return 'district is required';
                                }

                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: tempDist,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'District',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  ),
                                  hintText: " District Name"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'muncipilaty is required ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: tempMunci,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Municipality',
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.lightBlue,
                                ),
                                hintText: "Municipality name",
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
                                  return 'Street/Tol is required ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: tempTol,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Street/Tol name'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Ward No.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.add_circle,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                      onTap: () {
                                        showCupertinoModalPopup(
                                            context: context,
                                            builder: (context) =>
                                                CupertinoActionSheet(
                                                  actions: [tempwardpicker()],
                                                  cancelButton:
                                                      CupertinoActionSheetAction(
                                                    child: Text('Done'),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                ));
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
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
                                          '${tempwards[ind]}',
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
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Block No. is required ';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: tempBno,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Block No.',
                                    prefixIcon: Icon(
                                      Icons.block,
                                      color: Colors.blue,
                                    ),
                                    hintText: "Block No.",
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text(
                                    'Permanent Address',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: permProv,
                                  textCapitalization: TextCapitalization.words,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'provience is required';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Provience',
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.blue,
                                    ),
                                    hintText: 'Provience Name',
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
                                      return 'district is required';
                                    }

                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: permDist,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      labelText: 'District',
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.orange,
                                      ),
                                      hintText: " District Name"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'muncipilaty is required ';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: permMunci,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Municipality',
                                    prefixIcon: Icon(
                                      Icons.calendar_today,
                                      color: Colors.lightBlue,
                                    ),
                                    hintText: "Municipality name",
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
                                      return 'Street/Tol is required ';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: permTol,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      labelText: 'Street/Tol name'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Ward No.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.add_circle,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                      onTap: () {
                                        showCupertinoModalPopup(
                                            context: context,
                                            builder: (context) =>
                                                CupertinoActionSheet(
                                                  actions: [permwardpicker()],
                                                  cancelButton:
                                                      CupertinoActionSheetAction(
                                                    child: Text('Done'),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                ));
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
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
                                          '${permwards[index]}',
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
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Block No. is required ';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: permBnoadd,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Block No.',
                                    prefixIcon: Icon(
                                      Icons.block,
                                      color: Colors.blue,
                                    ),
                                    hintText: "Block No.",
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              ],
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
                                    tempward: tempwards[ind],
                                  );
                                  var jsonData =addressForm.toJson();


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

  Widget tempwardpicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (ind) {
                setState(() {
                  this.ind = ind;
                });
                final blood = tempwards[ind];
                print(blood);
              },
              children: tempwards.map((blood) {
                return Center(
                  child: Text(
                    '${blood}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                );
              }).toList()),
        ),
      );
  Widget permwardpicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (index) {
                setState(() {
                  this.index = index;
                });
                final perm = permwards[index];
                print(perm);
              },
              children: permwards.map((perm) {
                return Center(
                  child: Text(
                    '${perm}',
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
