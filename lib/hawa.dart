import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:palika/providers/apiProvider.dart';




class CustomScreen extends StatelessWidget {

    _getData(WidgetRef ref) async
    {
      // List<Provience> toSend = [];
      final productData = await ref.watch(dataProvider) ;
      // await ref.watch(dataProvider) .then((value) => toSend = value);

      // return toSend;
      return productData;


    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Consumer(
            builder: (context, ref, child) {
              final productData = ref.watch(dataProvider) ;
              // final productData = ref.watch(dataProvider) as List<Provience>;
              return

                // ListView.builder(
                //       itemCount: productData.length,
                //   itemBuilder: (context, index) {

                //     return ListTile(
                //       title: Text(productData[0].englishName),
                //       // subtitle: Text(productData[index].nepaliName),
                //     );
                //   },
                // );
                FutureBuilder(
                  // future: _getData(ref),
                  future: ref.watch(dataProvider),
                  builder:  (context, snapshot){
                    if(snapshot.hasError)
                    {
                      // return Text('Error fetching');
                      return Text(snapshot.error.toString());
                    }
                    else if(snapshot.hasData)
                    {
                      return ListTile(
                      title: Text("Yuop"),
                    );
                    }
                    else
                    {
                      return CircularProgressIndicator();
                    }
                  }
                );



        //
       }),
      ),
    );
  }
}
