import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palika/api.dart';
import 'package:palika/models/provience.dart';

final dataProvider = Provider((ref) => DataProvider().getData());
// final dataProvider = FutureProvider((ref) => DataProvider().getData());
final abcProvider = Provider((ref) => DataProvider());


class DataProvider {
  Future<List<Provience>> getData() async {
    final dio = Dio();
    try {
      final response = await dio.get(Apidata.apidata,
      );
      // print(response.data['data']);
     final data = (response.data['data']['provinces'] as List).map((e) => Provience.fromJson(e)

     ).toList();
     print(data);
  return data;
    } on DioError catch (err) {
      throw  err;
    }
  }
}




// final searchNewsProvider = StateNotifierProvider<SearchNewsProvider, List<Provience>>((ref) => SearchNewsProvider());

// class SearchNewsProvider extends  StateNotifier<List<Provience>>{
//   SearchNewsProvider() : super([]){
//     getNews();
//   }

//   Future<void> getNews () async{
//     final dio = Dio();
//     try{

//       final response = await dio.get(Apidata.apidata);

//       print(response.data);

//       final data = (response.data['data']['provinces'] as List).map((e) => Provience.fromJson(e)).toList();
//          state = data;
//     } on DioError catch (e){
//       print(e);
//     }
//   }

//}