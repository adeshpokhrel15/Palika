// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:http/http.dart';
// import 'package:palika/models/districts.dart';

// import '../api.dart';

// final apiProvider = Provider<DistrictProvider>((ref) => DistrictProvider());
// final districtsDataProvider =
//     FutureProvider<List<List<Districts>>>((ref) async {
//   return ref.read(apiProvider).getUser();
// });

// // class ApiService {
// //   String endPoint =
// //       'https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt';

// //   Future<List<List<<Districts>> getApiUser() async {
// //     final response = await get(Uri.parse(endPoint));
// //     if (response.statusCode == 200) {
// //       //  print(response.body);
// //       ////final List result = jsonDecode(response.body)['data']['provinces'];
// //       // final result = (json.encode(json.decode(response.body)['data']));
// //       //// // print(result);
// //       // // final data = (json.encode(json.decode(result)));
// //       //// return result.map(((e) => Provience.fromJson(e))).toList();
// //       ///
// //       final List result1 = jsonDecode(response.body) as List;
// //       print(result1);

// //       return result1.map((e) => Districts(districts: e)).toList();
// //     } else {
// //       throw Exception(response.reasonPhrase);
// //     }
// //   }
// // }

// // class DistrictProvider {
// //   Future<List<Districts>> getdistrict() async {
// //     final dio = Dio();
// //     try {
// //       final response = await dio.get(Apidata.apidata);
// //       var data = json.decode(response.data);
// //       final districts = data['data']['districts']
// //           .map((e) => Districts(districts: e as List<dynamic>))
// //           .toList();
// //       print(districts);

// //       return districts;
// //     } on DioError catch (e) {
// //       print(e.message);
// //       return [];
// //     }
// //   }
// // }

// // class DistrictProvider {
// //   Future<List<Districts>> getNews() async {
// //     final dio = Dio();
// //     try {
// //       final response = await dio.get(Apidata.apidata);
// //       final data = (response.data['data']['districts'] as List<int>)
// //           .map((e) => Districts(districts: e as List<int>))
// //           .toList();

// //       return [];
// //     } on DioError catch (e) {
// //       print(e);
// //       return [];
// //     }
// //   }
// // }

// class DistrictProvider {
//   String endPoint =
//       'https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt';

//   Future<List<List<Districts>>> getUser() async {
//     final response = await get(Uri.parse(endPoint));

//     if (response.statusCode == 200) {
//       final List result =
//           jsonDecode(response.body)['data']['provinces'] as List<dynamic>;

//       // return result.map(((e) => Districts(districts: e))).toList();
//      // return result.map((e) => Districts(districts: e)).toList();
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:palika/models/districts.dart';

class Api {
  static const String baseUrl =
      "https://gist.githubusercontent.com/sagartmg2/b28cfaa74c5922cbadf38796e8305173/raw/856c2ac86219c0120b05adefb7d58c50308febe1/gistfile1.txt";

  Future<List<DistrictModel>> getData() async {
    final result = await http.get(Uri.parse(baseUrl));
    final data = json.decode(result.body);
    print(data.toString());

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
