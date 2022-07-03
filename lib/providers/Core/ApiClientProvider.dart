import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "https://demo.digitalpalika.org/api/"),
  );

  postData({required Map<String, dynamic> formData}) async {
    try {
      final result = await dio.post("digital-profile", data: formData);
      print(result.toString());
    } on DioError catch (e) {
      print(e.response!.data.toString());
    }
  }
}
