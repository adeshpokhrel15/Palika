import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/toiletTypes.dart';
import 'package:palika/providers/districtsProvider.dart';
import 'package:palika/providers/formProvider.dart';
import 'package:palika/providers/toiletTypeProvider.dart';

class houseform extends StatefulWidget {
  static const routeName = 'house-form';

  @override
  State<houseform> createState() => _houseformState();
}

class _houseformState extends State<houseform> {
  final _form = GlobalKey<FormState>();

  final houseaddress = TextEditingController();

  final blocknumber = TextEditingController();

  final streetname = TextEditingController();

  final housenumber = TextEditingController();

  final toiletypeid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'House Details',
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
                                controller: houseaddress,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'House address is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'House address',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'House address',
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
                                    return 'Block number is required';
                                  }

                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: blocknumber,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Block number',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                    ),
                                    hintText: " Block number"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Stree name is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: streetname,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Stree name',
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Stree name ",
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
                                    return 'House number is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: housenumber,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'House number',
                                    hintText: "House number"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<Toilet>>(
                                future: ApiToilet().toiletgetData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Toilet> data = snap.data!;
                                    return DropdownButtonFormField<Toilet>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Toilet Types',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "Toilet type"),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.toiletNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          toiletypeid.text =
                                              '${value!.indextoilet}';
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
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

                                    // final houseForm = formModel(
                                    //   Houseaddress: houseaddress.text.trim(),
                                    //   Blocknumber:
                                    //       int.parse(blocknumber.text.trim()),
                                    //   Streetname: streetname.text,
                                    //   Housenumber:
                                    //       int.parse(housenumber.text.trim()),
                                    //   toilettypeid: toiletypeid.text.trim(),
                                    // );
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

                                    // var jsonData = houseForm.toJson();

                                    // final response = ref
                                    //     .read(formModelProvider.notifier)
                                    //     .addForm(houseForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  child: Text('Sace as Draft'),
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
