import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/schoolhive.dart';
import 'package:palika/main.dart';

final schoolHiveModelProvider =
    StateNotifierProvider<SchoolHiveModelProvider, List<SchoolHiveModel>>(
        (ref) => SchoolHiveModelProvider(ref: ref));

class SchoolHiveModelProvider extends StateNotifier<List<SchoolHiveModel>> {
  SchoolHiveModelProvider({required this.ref}) : super(ref.read(boxSchool));
  StateNotifierProviderRef ref;

  void addForm(SchoolHiveModel useform) async {
    final boxSchool = await Hive.openBox<SchoolHiveModel>('schoolhivemodel');
    if (state.isEmpty) {
      final useForm = SchoolHiveModel(
        childenschoolschemeid: useform.childenschoolschemeid,
        dresscode: useform.dresscode,
        dresscondition: useform.dresscondition,
        schoolname: useform.schoolname,
        schooltypeid: useform.schooltypeid,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<SchoolHiveModel>('schoolhivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('schoolhivemodel').close();
    super.dispose();
  }
}
