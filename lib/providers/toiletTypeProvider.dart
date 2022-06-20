import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:palika/models/districts.dart';
import 'package:palika/models/toiletTypes.dart';

class ApiToilet {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<Toilet>> toiletgetData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List districtData = data['data']['toilet_types'];
    final output = districtData
        .map((e) => Toilet(
            indextoilet: e[0], toiletNepaliname: e[1], toiletenglishname: e[2]))
        .toList();

    return output;
  }
}
