import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:palika/models/districts.dart';
import 'package:palika/models/ethnicGroup.dart';
import 'package:palika/models/nationalities.dart';

class Apiethinicgroup {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<Ethinicgroup>> ethinicgroupgetData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List ethinicgroup = data['data']['ethnic_groups'];
    final output = ethinicgroup
        .map((e) => Ethinicgroup(
            indexethinicgroup:int.parse(
              e[0],
            ),
            ethinicgroupnepaliname: e[1],
            ethinicgroupenglishname: e[2]))
        .toList();

    return output;
  }
}
