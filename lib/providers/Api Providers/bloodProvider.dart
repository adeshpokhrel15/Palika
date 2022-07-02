import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/Api Models/bloodGroup.dart';

class Apiblood {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<BloodGroup>> getData() async {
    final result = await http.get(Uri.parse(baseUrl));
    // print(json.decode(result.body)['data']['blood_groups']);
    final data = json.decode(result.body);
    // print(data.toString());

    final List districtData = data['data']['blood_groups'];
    // print(districtData);
    final output = districtData
        .map((e) =>
            BloodGroup(bloodid: int.parse(e[0]), bloodname: (e[1].toString())))
        .toList();

    return output;
  }
}
