import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/main.dart';

final foodHiveModelProvider =
    StateNotifierProvider<FoodHiveModelProvider, List<Foodmodel>>(
        (ref) => FoodHiveModelProvider(ref: ref));

class FoodHiveModelProvider extends StateNotifier<List<Foodmodel>> {
  FoodHiveModelProvider({required this.ref}) : super(ref.read(boxFood));
  StateNotifierProviderRef ref;

  void addForm(Foodmodel useform) async {
    final boxFood = await Hive.openBox<FamilyModel>('foodhivemodel');
    if (state.isEmpty) {
      final useForm = Foodmodel(
        foodconsumptiontiming: useform.foodconsumptiontiming,
        isbalanceddiet: useform.isbalanceddiet,
        isorganic: useform.isorganic,
        regularmealdescription: useform.regularmealdescription,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<Foodmodel>('foodhivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('foodhivemodel').close();
    super.dispose();
  }
}
