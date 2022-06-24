import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/Hive/appearencehive.dart';
import 'package:palika/Hive/citizenshive.dart';
import 'package:palika/Hive/ethencitieshive.dart';
import 'package:palika/Hive/expensshive.dart';
import 'package:palika/Hive/extrahive.dart';
import 'package:palika/Hive/familyhive.dart';
import 'package:palika/main.dart';

final familyHiveModelProvider =
    StateNotifierProvider<FamilyHiveModelProvider, List<FamilyModel>>(
        (ref) => FamilyHiveModelProvider(ref: ref));

class FamilyHiveModelProvider extends StateNotifier<List<FamilyModel>> {
  FamilyHiveModelProvider({required this.ref}) : super(ref.read(boxFamily));
  StateNotifierProviderRef ref;

  void addForm(FamilyModel useform) async {
    final boxFamily = await Hive.openBox<FamilyModel>('familyhivemodel');
    if (state.isEmpty) {
      final useForm = FamilyModel(
        daughterFirstname: useform.daughterFirstname,
        daughterLastname: useform.daughterLastname,
        daughterMiddlename: useform.daughterMiddlename,
        fatherFirstName: useform.fatherFirstName,
        fatherLastname: useform.fatherLastname,
        fatherMiddlename: useform.fatherMiddlename,
        grandfatherFirstname: useform.grandfatherFirstname,
        grandfatherLastname: useform.grandfatherLastname,
        grandfatherMiddlename: useform.grandfatherMiddlename,
        grandmotherFirstname: useform.grandmotherFirstname,
        grandmotherLastname: useform.grandmotherLastname,
        grandmotherMiddlename: useform.grandmotherMiddlename,
        motherFirstName: useform.motherFirstName,
        motherLastname: useform.motherLastname,
        motherMiddlename: useform.motherMiddlename,
        sonFirstname: useform.sonFirstname,
        sonLastname: useform.sonLastname,
        sonMiddlename: useform.sonMiddlename,
        spouseFirstName: useform.spouseFirstName,
        spouseLastName: useform.spouseLastName,
        spouseMiddleName: useform.spouseMiddleName,
        totaldaughter: useform.totaldaughter,
        totalson: useform.totalson,
      );

      state = [...state, useForm];
    }
  }

  void clearAll() {
    Hive.box<FamilyModel>('familyhivemodel').clear();
  }

  @override
  void dispose() {
    Hive.box('familyhivemodel').close();
    super.dispose();
  }
}
