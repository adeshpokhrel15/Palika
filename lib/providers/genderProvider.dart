import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:palika/models/districts.dart';
import 'package:palika/models/genders.dart';

class ApiGender {
  static const String baseUrlGender =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<Gender>> getData() async {
    final result = await http.get(Uri.parse(baseUrlGender));
    final data = json.decode(result.body);
    // print(data.toString());

    final List districtData = data['data']['genders'];
    final output = districtData
        .map((e) => Gender(
            genderIndex: int.parse(e[0]),
            englishNamegender: e[1],
            nepalNamegender: e[2]))
        .toList();

    return output;
  }
}
