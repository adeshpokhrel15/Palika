import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:palika/models/provience.dart';

class MyDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDropDown();
  }
}

class _MyDropDown extends State<MyDropDown> {
  late String countryname, message;
  late bool error;
  var data;

  List<String> provience = ["A1", "b2", "c3", "d4", "d5e", "Nepal"];

  @override
  void initState() {
    error = false;
    message = "";
    countryname = "Nepal"; //default country
    super.initState();
  }

  String endPoint =
      'https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt';

  Future<List<Provience>> agetUser() async {
    final response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data']['provinces'];
      print(result);

      return result.map(((e) => Provience.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Provience"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(children: <Widget>[
            Container(
              //wrapper for Country list
              child: DropdownButton(
                isExpanded: true,
                value: countryname,
                hint: Text("Select Provience"),
                items: provience.map((countryone) {
                  return DropdownMenuItem(
                    child: Text(countryone), //label of item
                    value: countryone, //value of item
                  );
                }).toList(),
                onChanged: (value) {
                  //  countryname = value; //change the country name
                  agetUser(); //get city list.
                },
              ),
            ),
            Container(
              //wrapper for City list
              margin: EdgeInsets.only(top: 30),
              child: error
                  ? Text(message)
                  : data == null
                      ? Text("Choose Country")
                      : cityList(),
              //if there is error then show error message,
              //else check if data is null,
              //if not then show city list,
            )
          ]),
        ));
  }

  Widget cityList() {
    //widget function for city list
    List<Provience> citylist = List<Provience>.from(data["data"].map((i) {
      return Provience.fromJson(i);
    })); //searilize citylist json data to object model.

    return DropdownButton(
        hint: Text("Select City"),
        isExpanded: true,
        items: citylist.map((Provience) {
          return DropdownMenuItem(
            child: Text(Provience.englishName),
            value: Provience.nepaliName,
          );
        }).toList(),
        onChanged: (value) {
          print("Selected city is $value");
        });
  }
}
