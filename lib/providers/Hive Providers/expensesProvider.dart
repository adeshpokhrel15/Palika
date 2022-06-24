import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/Hive/expensshive.dart';
import 'package:palika/main.dart';

final expensesHiveModelProvider =
    StateNotifierProvider<ExpensesHiveModelProvider, List<ExpenssHiveModel>>(
        (ref) => ExpensesHiveModelProvider(ref: ref));

class ExpensesHiveModelProvider extends StateNotifier<List<ExpenssHiveModel>> {
  ExpensesHiveModelProvider({required this.ref}) : super(ref.read(boxExpenss));
  StateNotifierProviderRef ref;

  void addForm(ExpenssHiveModel useform) async {
    final boxExpenses =
        await Hive.openBox<ExpenssHiveModel>('expensshivemodel');
    if (state.isEmpty) {
      final useForm = ExpenssHiveModel(
        expensecategory: useform.expensecategory,
        incomesource: useform.incomesource,
        incomesourceman: useform.incomesourceman,
        totalexpense: useform.totalexpense,
        totalmonthlyincome: useform.totalmonthlyincome,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<ExpenssHiveModel>('expensshivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('expensshivemodel').close();
    super.dispose();
  }
}
