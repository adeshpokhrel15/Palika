import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/models/expenseCategory.dart';
import 'package:palika/models/formModel.dart';
import 'package:palika/providers/expenseCategory.dart';
import 'package:palika/providers/formProvider.dart';

class expensesprofileform extends StatefulWidget {
  static const routeName = 'expensesprofile-form';

  @override
  State<expensesprofileform> createState() => _expensesprofileformState();
}

class _expensesprofileformState extends State<expensesprofileform> {
  final _form = GlobalKey<FormState>();

  final totalmonthincome = TextEditingController();

  final incomesource = TextEditingController();

  final incomesourcemain = TextEditingController();

  final expensecategory = TextEditingController();

  final totalexpense = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Expenses Form',
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
                                controller: totalmonthincome,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Total Month Income required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Total Month Income ',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Total Month Income ',
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
                                    return 'Income Source is required';
                                  }

                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: incomesource,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Income Source',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                    ),
                                    hintText: "Income Source"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Income Source main is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: incomesourcemain,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Income source main',
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Income dource main ",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FutureBuilder<List<ExpenseCategorytype>>(
                                future:
                                    Apichildrenexpensecategories().getData(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<ExpenseCategorytype> data =
                                        snap.data!;
                                    return DropdownButtonFormField<
                                            ExpenseCategorytype>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: ' Expense Category',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: ' Expense Category'),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                  e.expenseCategoryNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          expensecategory.text =
                                              '${value!.indexexpenseCategory}';
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
                                    return 'Total Expense is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: totalexpense,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Total Expense',
                                  prefixIcon: Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Total Expense",
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

                                    final expensesForm = formModel(
                                      totalmonthlyincome: int.parse(
                                        totalmonthincome.text.trim(),
                                      ),
                                      incomesource: incomesource.text.trim(),
                                      incomesourceman:
                                          incomesourcemain.text.trim(),
                                      expensecategory:
                                          expensecategory.text.trim(),
                                      totalexpense: double.parse(
                                          totalexpense.text.trim()),
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
                                    var jsonData = expensesForm.toJson();

                                    final response = ref
                                        .read(formModelProvider.notifier)
                                        .addForm(expensesForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  child: Text('Save as Draft'),
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
