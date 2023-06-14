import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/constants.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../../presentation/providers/token_provider.dart';

class DioClient extends ChangeNotifier {
  late final Dio _dio;
  final TokenProvider _tokenProvider;

  DioClient(this._tokenProvider) {
    _dio = Dio(
      BaseOptions(
        baseUrl: Constants.apiUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    )..interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
  }

  void _updateHeaders() {
    _dio.options.headers = {
      'Authorization': 'Bearer ${_tokenProvider.token}',
    };
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    _updateHeaders();
    Logger.d('[get]\npath: $path\ndata: $data');
    return _dio.get(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {Object? data, Options? options}) async {
    _updateHeaders();
    Logger.d('[post]\npath: $path\ndata: $data');
    return _dio.post(
      path,
      data: data,
      options: options,
    );
  }

  Future<Response> patch(String path, {Map<String, dynamic>? data}) async {
    _updateHeaders();
    Logger.d('[patch]\npath: $path\ndata: $data');
    return _dio.patch(path, data: data);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? data}) async {
    _updateHeaders();
    Logger.d('[delete]\npath: $path\ndata: $data');
    return _dio.delete(path, data: data);
  }
}
