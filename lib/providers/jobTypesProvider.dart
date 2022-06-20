import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:palika/models/districts.dart';
import 'package:palika/models/jobTypes.dart';

class ApiJobTypes {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<Jobtypes>> JobTypesgetData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List districtData = data['data']['districts'];
    final output = districtData
        .map(
          (e) => Jobtypes(
            indexjobtype: e[0],
            jobtypeNepaliname: e[1],
            jobtypeenglishname: e[2],
          ),
        )
        .toList();

    return output;
  }
}
