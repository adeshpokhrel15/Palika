import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:palika/models/districts.dart';
import 'package:palika/models/provience.dart';

//API SERVICE Provider
final apiProvider = Provider<ApiService>((ref) => ApiService());

final userDataProvider = FutureProvider<List<Provience>>((ref) async {
  return ref.read(apiProvider).getUser();
});

class ApiService {
  String endPoint =
      'https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt';

  Future<List<Provience>> getUser() async {
    final response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data']['provinces'];

      return result.map(((e) => Provience.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
