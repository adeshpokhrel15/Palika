import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/personalhive.dart';
import 'package:palika/main.dart';

final personalHiveModelProvider =
    StateNotifierProvider<PersonalHiveModelProvider, List<PersonalHiveModel>>(
        (ref) => PersonalHiveModelProvider(ref: ref));

class PersonalHiveModelProvider extends StateNotifier<List<PersonalHiveModel>> {
  PersonalHiveModelProvider({required this.ref}) : super(ref.read(boxPersonal));
  StateNotifierProviderRef ref;

  void addForm(PersonalHiveModel useform) async {
    final boxPersonal =
        await Hive.openBox<PersonalHiveModel>('personalhivemodel');
    if (state.isEmpty) {
      final useForm = PersonalHiveModel(
        agepersonal: useform.agepersonal,
        bloodgroupPersonal: useform.bloodgroupPersonal,
        dateofbirthpersonal: useform.dateofbirthpersonal,
        emailpersonal: useform.emailpersonal,
        firstNamepersonal: useform.firstNamepersonal,
        genderpersonal: useform.genderpersonal,
        handicappedIDPersonal: useform.handicappedIDPersonal,
        lastNamepersonal: useform.lastNamepersonal,
        middleNamepersonal: useform.middleNamepersonal,
        mobilenumberpersonal: useform.mobilenumberpersonal,
        pannumberpersonal: useform.pannumberpersonal,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<PersonalHiveModel>('personalhivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('personalhivemodel').close();
    super.dispose();
  }
}
