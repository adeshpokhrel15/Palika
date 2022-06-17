
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/providers/apiProvider.dart';


class CustomScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
            builder: (context, ref, child) {
              final productData = ref.watch(userDataProvider);
              return
              productData.when(
                  data: (data){
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index){
                          return  Container(
child:                            Text(data[index].englishName),


                            );

                        }
                    );
                  },
                  error: (err, stack) => Center(child: Text('$err'),),
                  loading: () => Center(
                    child: CircularProgressIndicator(
                      color: Colors.purple,
                    ),
                  )
              );
            }
        ),
      ),
    );
  }
}