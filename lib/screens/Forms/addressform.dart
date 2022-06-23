import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/districts.dart';
import 'package:palika/models/localBodies.dart';
import 'package:palika/models/provience.dart';
import 'package:palika/providers/districtsProvider.dart';
import 'package:palika/providers/formProvider.dart';
import 'package:palika/providers/localBodyProvider.dart';
import 'package:palika/providers/provienceProvider.dart';

class addressForm extends StatefulWidget {
  static const routeName = 'address-form';

  @override
  State<addressForm> createState() => _addressFormState();
}

class _addressFormState extends State<addressForm> {
  final _form = GlobalKey<FormState>();
  final tempProvController = TextEditingController();
  final tempDistController = TextEditingController();
  final tempMunciController = TextEditingController();
  final tempWardsController = TextEditingController();
  final tempTol = TextEditingController();
  final tempBno = TextEditingController();
  final permProv = TextEditingController();
  final permDist = TextEditingController();
  final permMunciController = TextEditingController();
  final permWardsController = TextEditingController();
  final permTol = TextEditingController();
  final permBnoadd = TextEditingController();

  final tempward = TextEditingController();
  final permward = TextEditingController();
  // int ind = 0;
  // int index = 0;

  // final tempwards = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  //   6,
  //   7,
  //   8,
  //   9,
  //   10,
  //   11,
  //   12,
  //   13,
  //   14,
  //   15,
  //   16,
  //   17,
  //   18,
  //   19,
  //   20,
  // ];

  // final permwards = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  //   6,
  //   7,
  //   8,
  //   9,
  //   10,
  //   11,
  //   12,
  //   13,
  //   14,
  //   15,
  //   16,
  //   17,
  //   18,
  //   19,
  //   20,
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
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
                          const Center(
                            child: Text(
                              'Temporary Address',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FutureBuilder<List<Provience>>(
                            future: ApiService().getUser(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<Provience> data = snap.data!;
                                return DropdownButtonFormField<Provience>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Provience',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: "Provience Name"),
                                    items: [
                                      ...data
                                          .map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.nepaliName),
                                            ),
                                          )
                                          .toList()
                                    ],
                                    onChanged: (value) {
                                      tempProvController.text =
                                          value!.nepaliName;
                                    });
                              } else {
                                return const LinearProgressIndicator();
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FutureBuilder<List<DistrictModel>>(
                            future: Api().getData(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<DistrictModel> data = snap.data!;
                                return DropdownButtonFormField<DistrictModel>(
                                    menuMaxHeight: 400,
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
                                      tempDistController.text =
                                          value!.nepaliName;
                                    });
                              } else {
                                return const LinearProgressIndicator();
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          FutureBuilder<List<LocalBodies>>(
                            future: ApilocalBody().getLocal(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<LocalBodies> data = snap.data!;
                                return DropdownButtonFormField<LocalBodies>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Minicipality',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: " Minicipality Name"),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.nepalNamelocal),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      tempMunciController.text =
                                          value!.nepalNamelocal;
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
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Ward No. is required ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: tempWardsController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Ward No.'),
                          ),
                          // Row(
                          //   children: [
                          //     const Text(
                          //       'Ward No.',
                          //       style: TextStyle(
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.blue),
                          //     ),
                          //     const SizedBox(
                          //       width: 40,
                          //     ),
                          //     InkWell(
                          //       child: const Icon(
                          //         Icons.add_circle,
                          //         size: 30,
                          //         color: Colors.blue,
                          //       ),
                          //       onTap: () {
                          //         showCupertinoModalPopup(
                          //             context: context,
                          //             builder: (context) =>
                          //                 CupertinoActionSheet(
                          //                   actions: [tempwardpicker()],
                          //                   cancelButton:
                          //                       CupertinoActionSheetAction(
                          //                     child: Text('Done'),
                          //                     onPressed: () =>
                          //                         Navigator.pop(context),
                          //                   ),
                          //                 ));
                          //       },
                          //     ),
                          //     const SizedBox(
                          //       width: 20,
                          //     ),
                          //     Container(
                          //       width: MediaQuery.of(context).size.width * 0.20,
                          //       height: 40,
                          //       decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         border: Border.all(
                          //           color: Colors.white,
                          //           width: 10,
                          //         ),
                          //         borderRadius: BorderRadius.circular(20),
                          //       ),
                          //       child: Center(
                          //         child: Text(
                          //           '${tempwards[ind]}',
                          //           style: const TextStyle(
                          //               fontSize: 20,
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.blue),
                          //           textAlign: TextAlign.end,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(
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
                          const Center(
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
                          FutureBuilder<List<Provience>>(
                            future: ApiService().getUser(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<Provience> data = snap.data!;
                                return DropdownButtonFormField<Provience>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Provience',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: "Provience Name"),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.nepaliName),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      permProv.text = value!.nepaliName;
                                    });
                              } else {
                                return const LinearProgressIndicator();
                              }
                            },
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
                                return const LinearProgressIndicator();
                              }
                            },
                          ),
                          SizedBox(height: 20),
                          FutureBuilder<List<LocalBodies>>(
                            future: ApilocalBody().getLocal(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<LocalBodies> data = snap.data!;
                                return DropdownButtonFormField<LocalBodies>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Minicipality',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: " Minicipality Name"),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.nepalNamelocal),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      permMunciController.text =
                                          value!.nepalNamelocal;
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
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Ward No. is required ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: permWardsController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Ward No.'),
                          ),

                          // Row(
                          //   children: [
                          //     SizedBox(
                          //       width: 3,
                          //     ),
                          //     Text(
                          //       'Ward No.',
                          //       style: TextStyle(
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.blue),
                          //     ),
                          //     SizedBox(
                          //       width: 40,
                          //     ),
                          //     InkWell(
                          //       child: Icon(
                          //         Icons.add_circle,
                          //         size: 30,
                          //         color: Colors.blue,
                          //       ),
                          //       onTap: () {
                          //         showCupertinoModalPopup(
                          //             context: context,
                          //             builder: (context) =>
                          //                 CupertinoActionSheet(
                          //                   actions: [permwardpicker()],
                          //                   cancelButton:
                          //                       CupertinoActionSheetAction(
                          //                     child: Text('Done'),
                          //                     onPressed: () =>
                          //                         Navigator.pop(context),
                          //                   ),
                          //                 ));
                          //       },
                          //     ),
                          //     SizedBox(
                          //       width: 20,
                          //     ),
                          //     Container(
                          //       width: MediaQuery.of(context).size.width * 0.20,
                          //       height: 40,
                          //       decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         border: Border.all(
                          //           color: Colors.white,
                          //           width: 10,
                          //         ),
                          //         borderRadius: BorderRadius.circular(20),
                          //       ),
                          //       child: Center(
                          //         child: Text(
                          //           '${permwards[index]}',
                          //           style: TextStyle(
                          //               fontSize: 20,
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.blue),
                          //           textAlign: TextAlign.end,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),

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
                          Container(
                            height: 50,
                            width: 150,
                            child: MaterialButton(
                              onPressed: () async {
                                _form.currentState!.save();
                                _form.currentState!.validate();
                                // final addressForm = formModel(
                                //   tempProv: tempProvController.text.trim(),
                                //   tempMuni: tempMunciController.text.trim(),
                                //   tempdistrict: tempDistController.text.trim(),
                                //   tempstreettol: tempTol.text.trim(),
                                //   permProv: permProv.text.trim(),
                                //   permMuni: permMunciController.text.trim(),
                                //   permdistrict: permDist.text.trim(),
                                //   permstreettol: permTol.text.trim(),
                                //   tempblockno: int.parse(tempBno.text.trim()),
                                //   permblocknoaddress:
                                //       int.parse(permBnoadd.text.trim()),
                                //   tempward: int.parse(
                                //       tempWardsController.text.trim()),
                                //   permpward: int.parse(
                                //       permWardsController.text.trim()),
                                // );
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
                                //      var jsonData = addressForm.toJson();

                                // final response = ref
                                //     .read(formModelProvider.notifier)
                                //     .addForm(addressForm);
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
                  )))));
    });
  }

  // Widget tempwardpicker() => SizedBox(
  //       height: 250,
  //       child: Center(
  //         child: CupertinoPicker(
  //             looping: true,
  //             itemExtent: 50,
  //             onSelectedItemChanged: (ind) {
  //               setState(() {
  //                 this.ind = ind;
  //               });
  //               final blood = tempwards[ind];
  //               print(blood);
  //             },
  //             children: tempwards.map((blood) {
  //               return Center(
  //                 child: Text(
  //                   '${blood}',
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.blue),
  //                 ),
  //               );
  //             }).toList()),
  //       ),
  //     );
  // Widget permwardpicker() => SizedBox(
  //       height: 250,
  //       child: Center(
  //         child: CupertinoPicker(
  //             looping: true,
  //             itemExtent: 50,
  //             onSelectedItemChanged: (index) {
  //               setState(() {
  //                 this.index = index;
  //               });
  //               final perm = permwards[index];
  //               print(perm);
  //             },
  //             children: permwards.map((perm) {
  //               return Center(
  //                 child: Text(
  //                   '${perm}',
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.blue),
  //                 ),
  //               );
  //             }).toList()),
  //       ),
  //     );
}
