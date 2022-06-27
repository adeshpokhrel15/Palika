// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:palika/providers/Hive%20Providers/foodConsumptionProvider.dart';
// import 'package:palika/providers/Hive%20Providers/personalProvider.dart';
// import 'package:palika/providers/Hive%20Providers/workingProvider.dart';

// class DraftStorage extends StatelessWidget {
//   const DraftStorage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             appBar: AppBar(
//               title: Text('Draft'),
//             ),
//             body: Consumer(builder: ((context, ref, child) {
//               final personalDetails = ref.watch(foodHiveModelProvider);
//               return ListView(
//                 children: [
//                   const Center(
//                     child: Text(
//                       'Personal Form',
//                       style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.green),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text('Email'),
//                   //        Text(personalDetails[0].foodconsumptiontiming!),
//                           //  ('${personalDetails[0].foodconsumptiontiming!}'),
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               );
//             }))));
//   }
// }
