import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/Constant/string.dart';
import 'package:palika/providers/Core/HomePageProvider.dart';

import '../../Hive/Home/mainhive.dart';

final personalControllerProvider = StateNotifierProvider.autoDispose<
    PersonalFormController, AsyncValue<List<HomeHiveModel>>>((ref) {
  return PersonalFormController(ref.watch(dbProvider));
});

class PersonalFormController
    extends StateNotifier<AsyncValue<List<HomeHiveModel>>> {
  PersonalFormController(this._dbClient) : super(const AsyncValue.loading()) {
    fetchData();
  }

  final DbClient _dbClient;

  fetchData() async {
    try {
      final String dbString = await _dbClient.getData(dbKey: mainList);
      final List jsonData = json.decode(dbString);
      final List<HomeHiveModel> listData =
          jsonData.map((e) => HomeHiveModel.fromJson(e)).toList();

      state = AsyncValue.data(listData);
    } catch (e) {
      state = const AsyncValue.error('No Data in DataBase');
    }
  }
}
