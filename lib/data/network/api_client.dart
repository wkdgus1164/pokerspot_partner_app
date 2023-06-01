import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/utils/constants.dart';

import '../../presentation/providers/token_provider.dart';

class DioClient {
  late final Dio _dio;

  DioClient(TokenProvider tokenProvider) {
    _dio = Dio(
      BaseOptions(
        baseUrl: Constants.apiUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: {
          'Authorization': 'Bearer ${tokenProvider.token}',
        },
      ),
    );
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    return _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    return _dio.post(path, data: data);
  }

  Future<Response> patch(String path, {Map<String, dynamic>? data}) async {
    return _dio.patch(path, data: data);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? data}) async {
    return _dio.delete(path, data: data);
  }
}
