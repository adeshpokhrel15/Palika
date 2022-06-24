import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/Hive/healthhive.dart';
import 'package:palika/Hive/househive.dart';
import 'package:palika/Hive/personalhive.dart';
import 'package:palika/Hive/schoolhive.dart';
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
      final useForm = WorkingHiveModel();

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
