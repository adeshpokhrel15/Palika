import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/childhlthhive.dart';
import 'package:palika/main.dart';

final childhealthModelProvider = StateNotifierProvider<
        ChildhealthHiveModelProvider, List<ChildHealthHiveModel>>(
    (ref) => ChildhealthHiveModelProvider(ref: ref));

class ChildhealthHiveModelProvider
    extends StateNotifier<List<ChildHealthHiveModel>> {
  ChildhealthHiveModelProvider({required this.ref})
      : super(ref.read(boxChildhealth));
  StateNotifierProviderRef ref;

  void addForm(ChildHealthHiveModel useform) async {
    final boxChildhealth =
        await Hive.openBox<ChildHealthHiveModel>('childhealthhivemodel');
    if (state.isEmpty) {
      final useForm = ChildHealthHiveModel(
        childrenbirthcondition: useform.childrenbirthcondition,
        childrenbirthplace: useform.childrenbirthplace,
        childrenbloodgroup: useform.childrenbloodgroup,
        childrengeneticdiseasedescription:
            useform.childrengeneticdiseasedescription,
        childrenisBCGvaccinated: useform.childrenisBCGvaccinated,
        childrenisDPTHEPBvaccinated: useform.childrenisDPTHEPBvaccinated,
        childrenisIPVvaccinated: useform.childrenisIPVvaccinated,
        childrenisJEvaccinated: useform.childrenisJEvaccinated,
        childrenisMRvaccinated: useform.childrenisMRvaccinated,
        childrenisOPVvaccinated: useform.childrenisOPVvaccinated,
        childrenisPCVvaccinated: useform.childrenisPCVvaccinated,
        childrenisTDvaccinated: useform.childrenisTDvaccinated,
        childreniscovidvaccinated: useform.childreniscovidvaccinated,
        childrenisgeneticdiseaseissue: useform.childrenisgeneticdiseaseissue,
        childrenvaccinedetails: useform.childrenvaccinedetails,
        childrenvacinedose: useform.childrenvacinedose,
        chilrenbirthweight: useform.chilrenbirthweight,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<ChildHealthHiveModel>('childhealthhivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('childhealthhivemodel').close();
    super.dispose();
  }
}
