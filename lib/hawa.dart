
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/providers/apiProvider.dart';
class CustomScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final _data = ref.watch(userDataProvider);

        return Scaffold(
          appBar: AppBar(
            title: Text('Custom Screen'),
          ),
        );
      },

      child: Container());
  }
}