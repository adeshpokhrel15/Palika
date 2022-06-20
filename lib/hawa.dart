// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'package:get/get.dart';
// // import 'package:palika/providers/districts.dart';
// // import 'package:palika/providers/apiProvider.dart';

// // class CustomScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Consumer(builder: (context, ref, child) {
// //           final productData = ref.watch(userDataProvider);

// //           //final abcdistrics = ref.watch(districtsDataProvider);
// //           return productData.when(
// //               data: (data) {
// //                 //   print(data);
// //                 return ListView.builder(
// //                     itemCount: data.length,
// //                     itemBuilder: (context, index) {
// //                       return GestureDetector(
// //                         child: ListTile(
// //                           title: Text(data[index].nepaliName),
// //                           subtitle: Text(data[index].englishName),
// //                           leading: Text('${data[index].code}'),
// //                         ),
// //                       );
// //                     });
// //               },
// //               error: (err, stack) => Center(
// //                     child: Text('$err'),
// //                   ),
// //               loading: () => Center(
// //                     child: CircularProgressIndicator(
// //                       color: Colors.purple,
// //                     ),
// //                   ));
// //         }),
// //       ),
// //     );
// //   }
// // }

// import 'package:dio/dio.dart';
// import 'package:find_dropdown/find_dropdown.dart';
// import 'package:flutter/material.dart';
// import 'package:palika/models/provience.dart';

// class AAMyHomePage extends StatefulWidget {
//   @override
//   _AAMyHomePageState createState() => _AAMyHomePageState();
// }

// class _AAMyHomePageState extends State<AAMyHomePage> {
//   var countriesKey = GlobalKey<FindDropdownState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("FindDropdown Example")),
//       body: Padding(
//         padding: const EdgeInsets.all(25),
//         child: Column(
//           children: <Widget>[
//             FindDropdown(
//               items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
//               label: "País",
//               onChanged: (item) {
//                 print(item);
//                 countriesKey.currentState?.setSelectedItem(<String>[]);
//               },
//               selectedItem: "Brasil",
//               showSearchBox: false,
//               labelStyle: TextStyle(color: Colors.redAccent),
//               backgroundColor: Colors.redAccent,
//               titleStyle: TextStyle(color: Colors.greenAccent),
//               validate: (String? item) {
//                 if (item == null)
//                   return "Required field";
//                 else if (item == "Brasil")
//                   return "Invalid item";
//                 else
//                   return null;
//               },
//             ),
//             FindDropdown<String>.multiSelect(
//               key: countriesKey,
//               items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
//               label: "Países",
//               selectedItems: ["Brasil"],
//               onChanged: (selectedItems) => print("countries: $selectedItems"),
//               showSearchBox: false,
//               labelStyle: TextStyle(color: Colors.redAccent),
//               titleStyle: TextStyle(color: Colors.greenAccent),
//               dropdownItemBuilder: (context, item, isSelected) {
//                 return ListTile(
//                   title: Text(item.toString()),
//                   trailing: isSelected ? Icon(Icons.check) : null,
//                   selected: isSelected,
//                 );
//               },
//               okButtonBuilder: (context, onPressed) {
//                 return Align(
//                   alignment: Alignment.centerRight,
//                   child: FloatingActionButton(
//                       child: Icon(Icons.check),
//                       onPressed: onPressed,
//                       mini: true),
//                 );
//               },
//               validate: (List<String>? items) {
//                 print("VALIDATION: $items");
//                 String? response;
//                 if (items == null || items.isEmpty) {
//                   response = "Required field";
//                 } else if (items.contains("Brasil")) {
//                   response = "'Brasil' não pode ser selecionado.";
//                 }
//                 print(response);
//                 return response;
//               },
//             ),
//             FindDropdown<Provience>(
//               label: "Nome",
//               onFind: (String filter) => getData(filter),
//               searchBoxDecoration: InputDecoration(
//                   hintText: "Search", border: OutlineInputBorder()),
//               onChanged: (Provience? data) => print(data),
//             ),
//             FindDropdown<Provience>(
//               label: "Personagem",
//               onFind: (String filter) => getData(filter),
//               onChanged: (Provience? data) => print(data),
//               dropdownBuilder: (BuildContext context, Provience? item) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Theme.of(context).dividerColor),
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.white,
//                   ),
//                   child: (item?.englishName == null)
//                       ? ListTile(
//                           leading: CircleAvatar(),
//                           title: Text("No item selected"))
//                       : ListTile(
//                           leading: CircleAvatar(
//                               backgroundImage: NetworkImage(item!.englishName)),
//                           title: Text(item.nepaliName),
//                           subtitle: Text(item.code.toString()),
//                         ),
//                 );
//               },
//               dropdownItemBuilder:
//                   (BuildContext context, Provience item, bool isSelected) {
//                 return Container(
//                   decoration: !isSelected
//                       ? null
//                       : BoxDecoration(
//                           border:
//                               Border.all(color: Theme.of(context).primaryColor),
//                           borderRadius: BorderRadius.circular(5),
//                           color: Colors.white,
//                         ),
//                   child: ListTile(
//                     selected: isSelected,
//                     title: Text(item.nepaliName),
//                     subtitle: Text(item.code.toString()),
//                     leading: CircleAvatar(
//                         backgroundImage: NetworkImage(item.englishName)),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<List<Provience>> getData(filter) async {
//     var response = await Dio().get(
//       "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
//       queryParameters: {"filter": filter},
//     );

//     var models = Provience.fromJson(response.data);
//     return [];
//   }
// }
