import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/utils/constants.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

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

  Future<Response> get(String path, {Map<String, dynamic>? data}) async {
    Logger.d('[get] path: $path\ndata: $data');
    return _dio.get(path, data: data);
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    Logger.d('[post] path: $path\ndata: $data');
    return _dio.post(path, data: data);
  }

  Future<Response> patch(String path, {Map<String, dynamic>? data}) async {
    Logger.d('[patch] path: $path\ndata: $data');
    return _dio.patch(path, data: data);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? data}) async {
    Logger.d('[delete] path: $path\ndata: $data');
    return _dio.delete(path, data: data);
  }
}
