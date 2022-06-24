import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/Hive/healthhive.dart';
import 'package:palika/Hive/househive.dart';
import 'package:palika/main.dart';

final houseHiveModelProvider =
    StateNotifierProvider<HouseHiveModelProvider, List<Housemodel>>(
        (ref) => HouseHiveModelProvider(ref: ref));

class HouseHiveModelProvider extends StateNotifier<List<Housemodel>> {
  HouseHiveModelProvider({required this.ref}) : super(ref.read(boxHouse));
  StateNotifierProviderRef ref;

  void addForm(Housemodel useform) async {
    final boxGoogle = await Hive.openBox<Housemodel>('househivemodel');
    if (state.isEmpty) {
      final useForm = Housemodel(
        blocknumber: useform.blocknumber,
        housenumber: useform.housenumber,
        houseaddress: useform.houseaddress,
        streetname: useform.streetname,
        toilettypeid: useform.toilettypeid,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<Housemodel>('househivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('househivemodel').close();
    super.dispose();
  }
}
