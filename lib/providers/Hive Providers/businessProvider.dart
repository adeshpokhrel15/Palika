import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/businesshive.dart';
import 'package:palika/main.dart';

final businessModelProvider =
    StateNotifierProvider<BusinessHiveModelProvider, List<BusinessHiveModel>>(
        (ref) => BusinessHiveModelProvider(ref: ref));

class BusinessHiveModelProvider extends StateNotifier<List<BusinessHiveModel>> {
  BusinessHiveModelProvider({required this.ref})
      : super(ref.read(boxBussiness));
  StateNotifierProviderRef ref;

  void addForm(BusinessHiveModel useform) async {
    final boxBusiness =
        await Hive.openBox<BusinessHiveModel>('businesshivemodel');
    if (state.isEmpty) {
      final useForm = BusinessHiveModel(
        annualincomeorg: useform.annualincomeorg,
        annualxpense: useform.annualxpense,
        businessarea: useform.businessarea,
        businessorg: useform.businessorg,
        businessproduct: useform.businessproduct,
        businesstypeid: useform.businesstypeid,
        orgname: useform.orgname,
        totalinvestment: useform.totalinvestment,
        totalnostaff: useform.totalnostaff,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<BusinessHiveModel>('businesshivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('businesshivemodel').close();
    super.dispose();
  }
}
