import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/formProvider.dart';

class childrendetailsForm extends StatefulWidget {
  static const routeName = "childrendetails-form";
  @override
  State<childrendetailsForm> createState() => _childrendetailsFormState();
}

enum SingingCharacter { Male, Female, Others }

class _childrendetailsFormState extends State<childrendetailsForm> {
  int index = 0;
  final items = [
    'Male',
    'Female',
    'Others',
  ];

  final _form = GlobalKey<FormState>();

  final name = TextEditingController();

  final familydetailid = TextEditingController();
  final dobcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Children Details',
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
                              controller: name,
                              textCapitalization: TextCapitalization.words,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Name is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Name',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                hintText: 'Name',
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
                                  return 'Family detail id is required';
                                }

                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: familydetailid,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Family detail Id',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  ),
                                  hintText: "Family detail Id"),
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
                                      'Gender',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 90,
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
                                                  actions: [buildDatePicker()],
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
                                          0.27,
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
                                          items[index],
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
                                Row(
                                  children: [
                                    Text(
                                      'Date of Birth',
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
                                              dobcontroller.text =
                                                  newDate.toIso8601String();
                                            });
                                            dobcontroller.text =
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
                                          dobcontroller.text,
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
                              height: 30,
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
                                  final childrenDetails = formModel(
                                    childrenFirstname: name.text.trim(),
                                    familydetailid: familydetailid.text.trim(),
                                    childrengender: items[index].trim(),
                                    childrendob: dobcontroller.text.trim(),
                                  );

                                  var jsonData = childrenDetails.toJson();

                                  final response = ref
                                      .read(formModelProvider.notifier)
                                      .addForm(childrenDetails);
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

  Widget buildDatePicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (index) {
                setState(() {
                  this.index = index;
                });
                final item = items[index];
                print(item);
              },
              children: items.map((item) {
                return Center(
                  child: Text(
                    item,
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
