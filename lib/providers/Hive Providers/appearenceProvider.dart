import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/main.dart';

final appearenceModelProvider = StateNotifierProvider<
    AppearenceHiveModelProvider,
    List<AppearenceHiveModel>>((ref) => AppearenceHiveModelProvider(ref: ref));

class AppearenceHiveModelProvider
    extends StateNotifier<List<AppearenceHiveModel>> {
  AppearenceHiveModelProvider({required this.ref})
      : super(ref.read(boxAppearence));
  StateNotifierProviderRef ref;

  void addForm(AppearenceHiveModel useform) async {
    final boxAppearence =
        await Hive.openBox<AppearenceHiveModel>('appearencehivemodel');
    if (state.isEmpty) {
      final useForm = AppearenceHiveModel(
        handicappedtypeid: useform.handicappedtypeid,
        ishandicap: useform.ishandicap,
        skincolor: useform.skincolor,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<AddressHiveModel>('addresshivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('addresshivemodel').close();
    super.dispose();
  }
}
