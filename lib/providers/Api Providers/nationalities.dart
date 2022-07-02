import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/Api Models/nationalities.dart';

class Apinationalities {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<Nationalities>> nationalitiesgetData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List nationalitiesdata = data['data']['nationalities'];
    final output = nationalitiesdata
        .map((e) => Nationalities(
              indexnationalities: int.parse(
                e[0],
              ),
              nationalitiesnepaliname: e[1],
              nationalitiesenglishname: e[2],
            ))
        .toList();

    return output;
  }
}
