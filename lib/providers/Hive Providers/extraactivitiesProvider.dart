import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/Hive/expensshive.dart';
import 'package:palika/Hive/extrahive.dart';
import 'package:palika/main.dart';

final extraHiveModelProvider =
    StateNotifierProvider<ExtraHiveModelProvider, List<ExtraHiveModel>>(
        (ref) => ExtraHiveModelProvider(ref: ref));

class ExtraHiveModelProvider extends StateNotifier<List<ExtraHiveModel>> {
  ExtraHiveModelProvider({required this.ref}) : super(ref.read(boxExtra));
  StateNotifierProviderRef ref;

  void addForm(ExtraHiveModel useform) async {
    final boxExtra = await Hive.openBox<ExtraHiveModel>('extrahivemodel');
    if (state.isEmpty) {
      final useForm = ExtraHiveModel(
        durationofactivities: useform.durationofactivities,
        interestedfieldid: useform.interestedfieldid,
        istakingtraining: useform.istakingtraining,
        professionalstatus: useform.professionalstatus,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<ExtraHiveModel>('extrahivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('extrahivemodel').close();
    super.dispose();
  }
}
