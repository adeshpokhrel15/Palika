import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

class appearenceProfile extends StatefulWidget {
  static const routeName = "apperenceProfile-form";
  @override
  State<appearenceProfile> createState() => _appearenceProfileState();
}

class _appearenceProfileState extends State<appearenceProfile> {
  final _form = GlobalKey<FormState>();

  final skincolor = TextEditingController();

  final handicapedid = TextEditingController();
  bool _checkHandicapped = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Appearance Profile',
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
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: skincolor,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Skin color is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Skin color',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Skin color',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Handicapped?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
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
                      return 'Handicapped id is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: handicapedid,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Handicapped Id',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Handicapped Id"),
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
                      final appearenceprofileForm = formModel(
                        skincolor: skincolor.text.trim(),
                        handicappedtypeid: handicapedid.text.trim(),
                        ishandicap: isChecked,
                      );
                       var jsonData = appearenceprofileForm.toJson();


                      final response = ref
                          .read(formModelProvider.notifier)
                          .addForm(appearenceprofileForm);
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


}
