import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RestClient {
  // ignore: top_level_function_literal_block, prefer_function_declarations_over_variables
  static final client = () async {
    var dio = Dio(
      BaseOptions(
        followRedirects: true,
        headers: {"Accept": "application/json"},
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        baseUrl: "http://192.168.41.132:4001",
      ),
    );
    dio.interceptors.add(PrettyDioLogger(requestHeader: true));
    final storage = await SharedPreferences.getInstance();
    String? accessToken = await storage.getString("accessToken");
    if (accessToken != null) {
      dio.options.headers['Authorization'] = "Bearer $accessToken";
    }
    return dio;
  };

  static dynamic _returnResponse(Response? response) {
    if (response == null) {
      throw Exception('Tidak dapat terkoneksi dengan API');
    }
    return _handleResponse(response);
  }

  static dynamic _returnErr(DioException err) {
    print(err);
    Response? response = err.response;
    if (response == null) {
      throw Exception(err.message ?? "HTTP ERROR");
    }
    return _handleResponse(response);
  }

  static _handleResponse(Response response) {
    if (response.statusCode == 200) {
      var responseJson = response.data;
      return responseJson;
    }
    throw Exception(
      response.data != null ? response.data['message'] : 'Undefined Error',
    );
  }

  static Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameter}) async {
    dynamic responseJson;
    try {
      Dio _client = await client();
      dynamic response =
          await _client.get(url, queryParameters: queryParameter);
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      throw Exception('No Internet connection');
    } on DioException catch (err) {
      responseJson = _returnErr(err);
    }
    return responseJson;
  }

  static Future<dynamic> post(String url, {dynamic data}) async {
    dynamic responseJson;
    Response response;
    try {
      Dio _client = await client();
      response = await _client.post(url, data: data);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw Exception('No Internet connection');
    } on DioException catch (err) {
      responseJson = _returnErr(err);
    }
    return responseJson;
  }

  static Future<dynamic> patch(String url, {dynamic data}) async {
    dynamic responseJson;
    Response response;
    try {
      Dio _client = await client();
      response = await _client.patch(url, data: data);
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      throw Exception('No Internet connection');
    } on DioException catch (err) {
      responseJson = _returnErr(err);
    }
    return responseJson;
  }

  static Future<dynamic> delete(String url, {dynamic data}) async {
    dynamic responseJson;
    Response response;
    try {
      Dio _client = await client();
      response = await _client.delete(url, data: data);
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      throw Exception('No Internet connection');
    } on DioException catch (err) {
      responseJson = _returnErr(err);
    }
    return responseJson;
  }
}
