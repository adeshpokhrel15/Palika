import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/businesshive.dart';
import 'package:palika/providers/Hive%20Providers/businessProvider.dart';

import '../../models/Api Models/businessTypes.dart';
import '../../providers/Api Providers/businessProvider.dart';

class businessprofile extends StatelessWidget {
  static const routName = "businessprofile-form";
  final _form = GlobalKey<FormState>();

  final businessorg = TextEditingController();
  final businesstypeid = TextEditingController();
  final orgname = TextEditingController();
  final totalinvestment = TextEditingController();
  final annualexpense = TextEditingController();
  final annualincomeorg = TextEditingController();
  final totalnostaff = TextEditingController();
  final businessarea = TextEditingController();
  final businessproduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                  child: Text(
                    'Business Profile',
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
                                controller: businessorg,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Business organization required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Business org ',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Business org ',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<Business>>(
                                future: Apibusiness().getData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Business> data = snap.data!;
                                    return DropdownButtonFormField<Business>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Business Type',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "Business Type"),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.businessNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          businesstypeid.text =
                                              '${value!.indexbusiness}';
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
                                    return 'Organization name is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: orgname,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Organization name ',
                                  prefixIcon: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Organization name ",
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
                                    return 'Total investment is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: totalinvestment,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Total investment',
                                    hintText: 'Total investment'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Annual income is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: annualincomeorg,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Annual income',
                                  prefixIcon: const Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Annual income",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: annualexpense,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Annual Expenses required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Annual Expenses',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Annual Expenses',
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
                                    return 'Total No. of staff is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: totalnostaff,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Total No. of staff',
                                  prefixIcon: const Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Total No. of staff",
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
                                    return 'Business area is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: businessarea,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Business area',
                                  prefixIcon: const Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Business area",
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
                                    return 'Business product is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: businessproduct,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Business product',
                                  prefixIcon: const Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Business product",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: MaterialButton(
                                  onPressed: () async {
                                    _form.currentState!.save();
                                    _form.currentState!.validate();

                                    final businessprofileForm =
                                        BusinessHiveModel(
                                      businessorg: businessorg.text.trim(),
                                      businesstypeid:
                                          businesstypeid.text.trim(),
                                      orgname: orgname.text.trim(),
                                      totalinvestment: int.parse(
                                        totalinvestment.text.trim(),
                                      ),
                                      annualxpense:
                                          int.parse(annualexpense.text.trim()),
                                      annualincomeorg: double.parse(
                                          annualincomeorg.text.trim()),
                                      totalnostaff: int.parse(
                                        totalnostaff.text.trim(),
                                      ),
                                      businessarea: businessarea.text.trim(),
                                      businessproduct:
                                          businessproduct.text.trim(),
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

                                    var jsonData = businessprofileForm.toJson();

                                    final response = ref
                                        .read(businessModelProvider.notifier)
                                        .addForm(businessprofileForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  color: const Color(0xFF00a2e8),
                                  textColor: Colors.black,
                                  child: Text('Submit'),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))));
    });
  }
}
