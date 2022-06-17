import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

class childrenhealthProfile extends StatefulWidget {
  static const routeName = "childrenhealthProfile-form";
  @override
  State<childrenhealthProfile> createState() => _childrenhealthProfileState();
}

class _childrenhealthProfileState extends State<childrenhealthProfile> {
  final _form = GlobalKey<FormState>();
  int ind = 0;
  final bloods = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];

  final birthplace = TextEditingController();
  final birthweight = TextEditingController();
  final birthconditioins = TextEditingController();
  final geneticdiseasedescrption = TextEditingController();
  final vaccinedetails = TextEditingController();
  final vaccinedoes = TextEditingController();

  bool _checkBCGVaccinated = false;
  bool _checkDPTHEPBVaccinated = false;
  bool _checkOPVVaccinated = false;
  bool _checkPCVVaccinated = false;
  bool _checkIPVVaccinated = false;
  bool _checkMRVaccinated = false;
  bool _checkJEVaccinated = false;
  bool _checkTDVaccinated = false;
  bool _checkGeneticVaccinated = false;
  bool _checkCovidVaccinated = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Children Health',
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Blood Group',
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
                            builder: (context) => CupertinoActionSheet(
                                  actions: [buildbloodpicker()],
                                  cancelButton: CupertinoActionSheetAction(
                                    child: Text('Done'),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ));
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
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
                          bloods[ind],
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: birthplace,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Blace place is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Blace place',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Blace place',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: birthweight,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Birth Weight',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Birth Weight',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: birthconditioins,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Birth Conditions',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Birth Conditions',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is BCG Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkBCGVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkBCGVaccinated = !_checkBCGVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is DPT H_EPB Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkDPTHEPBVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkDPTHEPBVaccinated = !_checkDPTHEPBVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is OPV Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkOPVVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkOPVVaccinated = !_checkOPVVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is PCV Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkPCVVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkPCVVaccinated = !_checkPCVVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is IPV Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkIPVVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkIPVVaccinated = !_checkIPVVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is MR Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkMRVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkMRVaccinated = !_checkMRVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is JE Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkJEVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkJEVaccinated = !_checkJEVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is TD Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkTDVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkTDVaccinated = !_checkTDVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Genetic Disease Issues?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkGeneticVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkGeneticVaccinated = !_checkGeneticVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: geneticdiseasedescrption,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Genetic disease description',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Genetic disease description',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Covid Vaccinated?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: _checkCovidVaccinated,
                      onChanged: (value) {
                        setState(() {
                          _checkCovidVaccinated = !_checkCovidVaccinated;
                        });
                      },
                    ) //Row
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Vaccine details is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: vaccinedetails,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Vaccine details ',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Vaccine details "),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Vaccine dose is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: vaccinedoes,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Vaccine dose ',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Vaccine dose "),
                ),
                SizedBox(
                  height: 20,
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
                                contentPadding: const EdgeInsets.all(20.0),
                                content:
                                    const Text('Addedd sucessfully in Draft'),
                              ));
                      _form.currentState!.save();
                      _form.currentState!.validate();
                      FocusScope.of(context).unfocus();
                      final childrenHealth = formModel(
                        childrenbirthplace: birthplace.text.trim(),
                        chilrenbirthweight: int.parse(birthweight.text.trim()),
                        childrenbirthcondition: birthconditioins.text.trim(),
                        childrengeneticdiseasedescription:
                            geneticdiseasedescrption.text.trim(),
                        childrenvaccinedetails: vaccinedetails.text.trim(),
                        childrenvacinedose: vaccinedoes.text.trim(),
                        childrenisBCGvaccinated: _checkBCGVaccinated,
                        childrenisMRvaccinated: _checkMRVaccinated,
                        childrenisJEvaccinated: _checkJEVaccinated,
                        childrenisTDvaccinated: _checkTDVaccinated,
                        childrenisgeneticdiseaseissue: _checkGeneticVaccinated,
                        childreniscovidvaccinated: _checkCovidVaccinated,
                        childrenisDPTHEPBvaccinated: _checkDPTHEPBVaccinated,
                        childrenisOPVvaccinated: _checkOPVVaccinated,
                        childrenisPCVvaccinated: _checkPCVVaccinated,
                        childrenisIPVvaccinated: _checkIPVVaccinated,
                        childrenbloodgroup: bloods[ind].trim(),
                      );

                      var jsonData = childrenHealth.toJson();



                      final response = ref
                          .read(formModelProvider.notifier)
                          .addForm(childrenHealth);
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
      ));
    });
  }

  List<Widget> buildBCG() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkBCGVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkBCGVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkBCGVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkBCGVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildDPTHEBV() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkDPTHEPBVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkDPTHEPBVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkDPTHEPBVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkDPTHEPBVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildOPV() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkOPVVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkOPVVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkOPVVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkOPVVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildPCV() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkPCVVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkPCVVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkPCVVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkPCVVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildIPV() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkIPVVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkIPVVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkIPVVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkIPVVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildMR() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkMRVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkMRVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkMRVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkMRVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildJE() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkJEVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkJEVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkJEVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkJEVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildTD() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkTDVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkTDVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkTDVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkTDVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildGenetics() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkGeneticVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkGeneticVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkGeneticVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkGeneticVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  List<Widget> buildCovid() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkCovidVaccinated,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkCovidVaccinated = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkCovidVaccinated,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkCovidVaccinated = false),
        ),
      ),
    ];

    return widgetss;
  }

  Widget buildbloodpicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (ind) {
                setState(() {
                  this.ind = ind;
                });
                final blood = bloods[ind];
                print(blood);
              },
              children: bloods.map((blood) {
                return Center(
                  child: Text(
                    blood,
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
