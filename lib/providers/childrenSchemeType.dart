import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:palika/models/bloodGroup.dart';
import 'package:palika/models/businessTypes.dart';
import 'package:palika/models/childrenSchoolSchemes.dart';
import 'package:palika/models/districts.dart';
import 'package:palika/models/schoolTypes.dart';

class ApichildrenSchemeType {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<Childrenschemetype>> getData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List districtData = data['data']['children_school_schemes'];
    final output = districtData
        .map((e) => Childrenschemetype(
            indexchildrenschemetype: int.parse(
              e[0],
            ),
            childrenschemetypeNepaliname: e[1],
            childrenschemetypeenglishname: e[2]))
        .toList();

    return output;
  }
}
