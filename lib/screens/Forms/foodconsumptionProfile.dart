import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/providers/Hive%20Providers/foodConsumptionProvider.dart';

class foodconsumptionProfile extends StatefulWidget {
  static const routeName = "foodconsumptionProfile-form";
  @override
  State<foodconsumptionProfile> createState() => _foodconsumptionProfileState();
}

class _foodconsumptionProfileState extends State<foodconsumptionProfile> {
  final _form = GlobalKey<FormState>();

  final foodtiming = TextEditingController();

  final regulardescription = TextEditingController();
  // bool value = false;

  bool _checkOrganic = false;
  bool _checkBalnced = false;
  // List<String> allItemList = [
  //   'Yes',
  //   'No',
  // ];
  // static List<String> checkedItemList = [];
  // List<String> selectedItemList = checkedItemList ?? [];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Food Consumption Profile',
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Is Organic?",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Spacer(),
                    Checkbox(
                      value: _checkOrganic,
                      onChanged: (value) {
                        setState(() {
                          _checkOrganic = !_checkOrganic;
                        });
                      },
                    ) //Row
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: foodtiming,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Timing is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Food Consumption Timing',
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Food Consumption Timing',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Regular meal description is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: regulardescription,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Regular meal description',
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Regular meal description"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Is Balanced Diet?",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Spacer(),
                    Checkbox(
                      value: _checkBalnced,
                      onChanged: (value) {
                        setState(() {
                          _checkBalnced = !_checkBalnced;
                        });
                      },
                    ) //Row
                  ],
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

                      final foodconsumptionProfileForm = Foodmodel(
                          foodconsumptiontiming: foodtiming.text.trim(),
                          regularmealdescription:
                              regulardescription.text.trim(),
                          isbalanceddiet: _checkBalnced,
                          isorganic: _checkOrganic);
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

                      var jsonData = foodconsumptionProfileForm.toJson();

                      final response = ref
                          .read(foodHiveModelProvider.notifier)
                          .addForm(foodconsumptionProfileForm);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 5.0,
                    color: const Color(0xFF00a2e8),
                    textColor: Colors.black,
                    child: Text('Save as Draft'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    });
  }
}
