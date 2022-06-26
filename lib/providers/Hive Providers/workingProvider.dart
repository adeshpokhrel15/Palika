import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/workinghive.dart';
import 'package:palika/main.dart';

final workingHiveModelProvider =
    StateNotifierProvider<WorkingHiveModelProvider, List<WorkingHiveModel>>(
        (ref) => WorkingHiveModelProvider(ref: ref));

class WorkingHiveModelProvider extends StateNotifier<List<WorkingHiveModel>> {
  WorkingHiveModelProvider({required this.ref}) : super(ref.read(boxWorking));
  StateNotifierProviderRef ref;

  void addForm(WorkingHiveModel useform) async {
    final boxWorking = await Hive.openBox<WorkingHiveModel>('workinghivemodel');
    if (state.isEmpty) {
      final useForm = WorkingHiveModel(
        annualincome: useform.annualincome,
        designation: useform.designation,
        joborganization: useform.joborganization,
        jobtype: useform.jobtype,
        organizationaddress: useform.organizationaddress,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<WorkingHiveModel>('workinghivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('workinghivemodel').close();
    super.dispose();
  }
}
