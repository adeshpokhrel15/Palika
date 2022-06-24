import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/Hive/healthhive.dart';
import 'package:palika/main.dart';

final healthHiveModelProvider =
    StateNotifierProvider<HealthHiveModelProvider, List<HealthHiveModel>>(
        (ref) => HealthHiveModelProvider(ref: ref));

class HealthHiveModelProvider extends StateNotifier<List<HealthHiveModel>> {
  HealthHiveModelProvider({required this.ref}) : super(ref.read(boxHealth));
  StateNotifierProviderRef ref;

  void addForm(HealthHiveModel useform) async {
    final boxHealth = await Hive.openBox<HealthHiveModel>('healthhivemodel');
    if (state.isEmpty) {
      final useForm = HealthHiveModel(
        birthcondition: useform.birthcondition,
        birthplace: useform.birthplace,
        birthweight: useform.birthweight,
        geneticdiseasedescription: useform.geneticdiseasedescription,
        healthbloodgroup: useform.healthbloodgroup,
        isbelowvaccinated: useform.isbelowvaccinated,
        iscovidvaccinated: useform.iscovidvaccinated,
        isgeneticdiseaseissue: useform.isgeneticdiseaseissue,
        vaccinedetails: useform.vaccinedetails,
        vacinedose: useform.vacinedose,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<HealthHiveModel>('healthhivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('healthhivemodel').close();
    super.dispose();
  }
}
