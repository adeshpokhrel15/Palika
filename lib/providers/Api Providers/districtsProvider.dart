import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../models/Api Models/districts.dart';

class Api {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<DistrictModel>> getData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List districtData = data['data']['districts'];
    final output = districtData
        .map(
          (e) => DistrictModel(
            findex: e[0],
            sindex: e[1],
            englishName: e[2],
            nepaliName: e[3],
            totalCount: e[4],
          ),
        )
        .toList();

    return output;
  }
}
