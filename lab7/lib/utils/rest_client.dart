import 'package:dio/dio.dart';

class RestClient {
  // ignore: top_level_function_literal_block, prefer_function_declarations_over_variables
  static final client = () async {
    var dio = Dio(
      BaseOptions(
        followRedirects: true,
        headers: {"Accept": "application/json"},
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        baseUrl: "",
      ),
    );
    // String? accessToken = AuthRepository.getSavedToken();
    // if (accessToken != null) {
    //   dio.options.headers['Authorization'] = "Bearer $accessToken";
    // }
    return dio;
  };
}
