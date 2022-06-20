import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:palika/models/districts.dart';
import 'package:palika/models/localBodies.dart';

class ApilocalBody {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<LocalBodies>> getLocal() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    //  print(data.toString());

    final List localData = data['data']['local_bodies'];
    final output = localData
        .map((e) => LocalBodies(
            firstlocal: e[0],
            secondlocal: e[1],
            englishNamelocal: e[2],
            municipalityNamelocal: e[3],
            nepalNamelocal: e[4],
            localcode: e[5]))
        .toList();

    return output;
  }
}
