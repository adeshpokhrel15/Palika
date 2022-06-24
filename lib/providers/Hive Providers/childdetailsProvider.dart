import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/childhlthhive.dart';
import 'package:palika/Hive/childrenhive.dart';
import 'package:palika/main.dart';

final childdetailModelProvider = StateNotifierProvider<
        ChilddetailHiveModelProvider, List<ChildDetailsHiveModel>>(
    (ref) => ChilddetailHiveModelProvider(ref: ref));

class ChilddetailHiveModelProvider
    extends StateNotifier<List<ChildDetailsHiveModel>> {
  ChilddetailHiveModelProvider({required this.ref})
      : super(ref.read(boxChilddetails));
  StateNotifierProviderRef ref;

  void addForm(ChildDetailsHiveModel useform) async {
    final boxAppearence =
        await Hive.openBox<ChildDetailsHiveModel>('childdetailshivemodel');
    if (state.isEmpty) {
      final useForm = ChildDetailsHiveModel(
        childrenFirstname: useform.childrenFirstname,
        childrenLastname: useform.childrenLastname,
        childrenMiddlename: useform.childrenMiddlename,
        childrendob: useform.childrendob,
        childrengender: useform.childrengender,
        familydetailid: useform.familydetailid,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<ChildDetailsHiveModel>('childdetailshivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('childdetailshivemodel').close();
    super.dispose();
  }
}
