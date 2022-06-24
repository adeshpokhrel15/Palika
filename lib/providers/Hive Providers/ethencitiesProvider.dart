import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/main.dart';

final ethencitiesHiveModelProvider = StateNotifierProvider<
        EthencitiesHiveModelProvider, List<EthencitiesHiveModel>>(
    (ref) => EthencitiesHiveModelProvider(ref: ref));

class EthencitiesHiveModelProvider
    extends StateNotifier<List<EthencitiesHiveModel>> {
  EthencitiesHiveModelProvider({required this.ref})
      : super(ref.read(boxEthcities));
  StateNotifierProviderRef ref;

  void addForm(EthencitiesHiveModel useform) async {
    final boxEthencities =
        await Hive.openBox<EthencitiesHiveModel>('ethencitieshivemodel');
    if (state.isEmpty) {
      final useForm = EthencitiesHiveModel(
        ethnicgroup: useform.ethnicgroup,
        nationalismandreligion: useform.nationalismandreligion,
        nationality: useform.nationality,
        religion: useform.religion,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<EthencitiesHiveModel>('ethencitieshivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('ethencitieshivemodel').close();
    super.dispose();
  }
}
