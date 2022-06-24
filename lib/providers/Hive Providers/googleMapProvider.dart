import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/Hive/foodhive.dart';
import 'package:palika/Hive/googlehive.dart';
import 'package:palika/main.dart';

final googleHiveModelProvider =
    StateNotifierProvider<GoogleHiveModelProvider, List<GoogleHiveModel>>(
        (ref) => GoogleHiveModelProvider(ref: ref));

class GoogleHiveModelProvider extends StateNotifier<List<GoogleHiveModel>> {
  GoogleHiveModelProvider({required this.ref}) : super(ref.read(boxGoogle));
  StateNotifierProviderRef ref;

  void addForm(GoogleHiveModel useform) async {
    final boxGoogle = await Hive.openBox<GoogleHiveModel>('googlehivemodel');
    if (state.isEmpty) {
      final useForm = GoogleHiveModel(
        latitude: useform.latitude,
        longitude: useform.longitude,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<GoogleHiveModel>('googlehivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('googlehivemodel').close();
    super.dispose();
  }
}
