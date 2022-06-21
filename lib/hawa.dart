import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class abc extends StatefulWidget {
  @override
  _abcState createState() {
    return _abcState();
  }
}

class _abcState extends State<abc> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: () {},
            color: CupertinoColors.label,
          ),
          middle: const Text("Flutter Cupertino Switch")),
      child: Material(
        child: Container(
            margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: const Text(
                          "Wifi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: CupertinoSwitch(
                          value: state,
                          onChanged: (value) {
                            state = value;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
