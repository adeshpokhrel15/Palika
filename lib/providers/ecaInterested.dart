import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:palika/models/bloodGroup.dart';
import 'package:palika/models/businessTypes.dart';
import 'package:palika/models/districts.dart';
import 'package:palika/models/ecaInterested.dart';

class ApiecaInterested {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<EcainterestedField>> getData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    // print(data.toString());

    final List ecadata = data['data']['eca_interested_fields'];
    final output = ecadata
        .map((e) => EcainterestedField(
            indexecainterestedField: e[0],
            ecainterestedFieldNepaliname: e[1],
            ecainterestedFieldenglishname: e[2]))
        .toList();

    return output;
  }
}