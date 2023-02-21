import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:motionhack/core/constant/network.dart';

class Api {
  late Dio dio;
  CancelToken? dioCancelToken;
  String? baseUrl;

  Api() {
    dio = Dio();
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    dio.options.connectTimeout = Duration(minutes: 6);
    dio.options.receiveTimeout = Duration(minutes: 6);
    dioCancelToken = CancelToken();
    // dio.interceptors.add(
    //   LogInterceptor(
    //     responseBody: true,
    //     requestHeader: true,
    //     responseHeader: true,
    //     request: true,
    //     requestBody: true,
    //   ),
    // );
    baseUrl = NETWORK.baseUrl;
    dio.options.headers['Language'] = "EN";
  }

  setToken(String token) {
    dio.options.headers['Authorization'] = "Bearer $token";
  }

  clearToken(String token) {
    dio.options.headers['Authorization'] = "";
  }

  Future<Response> get({
    required String path,
    Map<String, String>? queryParameters,
  }) =>
      dio.get(
        '$baseUrl/$path',
        queryParameters: queryParameters,
      );

  Future<Response> post({
    required String path,
    FormData? formData,
    Map<String, String>? formObj,
    Map<String, String>? queryParameters,
  }) =>
      dio.post(
        '$baseUrl/$path',
        data: formData ?? formObj,
        queryParameters: queryParameters,
      );

  Future<Response> put({
    required String path,
    FormData? formData,
    Map<String, String>? formObj,
    Map<String, String>? queryParameters,
  }) =>
      dio.put(
        '$baseUrl/$path',
        data: formData ?? formObj,
        queryParameters: queryParameters,
        options: Options(
          contentType: "application/x-www-form-urlencoded",
        ),
      );

  Future<Response> delete({
    required String path,
    FormData? formData,
    Map<String, String>? formObj,
    Map<String, String>? queryParameters,
  }) =>
      dio.delete(
        '$baseUrl/$path',
        data: formData ?? formObj,
        queryParameters: queryParameters,
        options: Options(
          contentType: "application/x-www-form-urlencoded",
        ),
      );
}
