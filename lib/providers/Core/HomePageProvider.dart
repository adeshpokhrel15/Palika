// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:palika/Hive/personalhive.dart';
// import 'package:palika/main.dart';

// import '../../Hive/Home/homehive.dart';

// final homeHiveModelProvider =
//     StateNotifierProvider<HomeHiveModelProvider, List<HomeHiveModel>>(
//         (ref) => HomeHiveModelProvider(ref: ref));

// class HomeHiveModelProvider extends StateNotifier<List<HomeHiveModel>> {
//   HomeHiveModelProvider({required this.ref}) : super(ref.read(boxHome));
//   StateNotifierProviderRef ref;

//   void addForm(HomeHiveModel useform) async {
//     final boxHome = await Hive.openBox<HomeHiveModel>('homehive');
//     if (state.isEmpty) {
//       final useForm = HomeHiveModel(
//         homeaddress: useform.homeaddress,
//         homeid: useform.homeid,
//         homename: useform.homename,
//       );

//       state = [...state, useForm];
//     }
//   }

//   void save() {
//     Hive.box<HomeHiveModel>('homehive').clear();
//   }

//   @override
//   void dispose() {
//     Hive.box('homehive').close();
//     super.dispose();
//   }
// }

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../../Hive/Home/mainhive.dart';

final dbProvider = Provider<DbClient>((ref) {
  return DbClient();
});

class DbClient {
  getData({required String dbKey}) async {
    final boxHome1 = await Hive.openBox<HomeHiveModel>('homehive');
    // final result = boxHome1;
    // Hive.box('homehive').get('homehive');
    // final result = Hive.box('homehive').get('homehive');
    // return result;
    final boxHome = boxHome1.get('homehive');
  }

  saveData({required String dbKey, required dynamic data}) async {
    // Hive.box('homehive').put('homehive', data);
    final boxHome1 = await Hive.openBox<HomeHiveModel>('homehive');
    final boxHome = boxHome1.put(dbKey, data);
  }

  resetDb() {
    Hive.box('homehive').clear();
  }
}
