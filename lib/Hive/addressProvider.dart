import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:palika/Hive/addresshive.dart';
import 'package:palika/main.dart';

final addressModelProvider =
    StateNotifierProvider<AddressHiveModelProvider, List<AddressHiveModel>>(
        (ref) => AddressHiveModelProvider(ref: ref));

class AddressHiveModelProvider extends StateNotifier<List<AddressHiveModel>> {
  AddressHiveModelProvider({required this.ref}) : super(ref.read(boxAddress));
  StateNotifierProviderRef ref;

  void addForm(AddressHiveModel useform) async {
    final boxAddress = await Hive.openBox<AddressHiveModel>('addresshivemodel');
    if (state.isEmpty) {
      final useForm = AddressHiveModel(
        permMuni: useform.permMuni,
        permProv: useform.permProv,
        permdistrict: useform.permdistrict,
        permblocknoaddress: useform.permblocknoaddress,
        permpward: useform.permpward,
        permstreettol: useform.permstreettol,
        tempMuni: useform.tempMuni,
        tempProv: useform.tempProv,
        tempdistrict: useform.tempdistrict,
        tempblockno: useform.tempblockno,
        tempward: useform.tempward,
        tempstreettol: useform.tempstreettol,
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


   // Hive.box<formModel>('FormModel').add(useForm);
      // box.add(useForm);
      // box.add(formModel(
      //   fullNamepersonal: useform.fullNamepersonal,
      //   email: useform.email,
      //   age: useform.age,
      //   handicappedidpersonal: useform.handicappedidpersonal,
      //   mobilenumber: useform.mobilenumber,
      //   pannumber: useform.pannumber,
      // ));