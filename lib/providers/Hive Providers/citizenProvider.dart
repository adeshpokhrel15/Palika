import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/main.dart';

final citizenHiveModelProvider =
    StateNotifierProvider<CitizenHiveModelProvider, List<CitizensHiveModel>>(
        (ref) => CitizenHiveModelProvider(ref: ref));

class CitizenHiveModelProvider extends StateNotifier<List<CitizensHiveModel>> {
  CitizenHiveModelProvider({required this.ref}) : super(ref.read(boxCitizen));
  StateNotifierProviderRef ref;

  void addForm(CitizensHiveModel useform) async {
    final boxCitizen =
        await Hive.openBox<CitizensHiveModel>('citizenshivemodel');
    if (state.isEmpty) {
      final useForm = CitizensHiveModel(
        citizenshipnumber: useform.citizenshipnumber,
        issuedat: useform.issuedat,
        issueddate: useform.issueddate,
        verifiedby: useform.verifiedby,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<CitizensHiveModel>('citizenshivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('citizenshivemodel').close();
    super.dispose();
  }
}
