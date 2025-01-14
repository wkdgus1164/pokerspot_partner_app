// ignore_for_file: invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dio_config.dart';
import 'dio_interceptor.dart';

part 'dio_provider.g.dart';

/// Dio 인스턴스를 제공하는 프로바이더
@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: DioConfig.baseUrl,
    connectTimeout: const Duration(seconds: DioConfig.connectTimeout),
    receiveTimeout: const Duration(seconds: DioConfig.receiveTimeout),
    headers: DioConfig.defaultHeaders,
    validateStatus: DioConfig.isSuccessStatusCode,
  );

  final dio = Dio(options);

  // 로거 설정
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  // 인터셉터 추가
  dio.interceptors.addAll([
    CustomInterceptor(logger: logger),
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (obj) {
        if (obj.toString().contains('❗')) {
          logger.e(obj);
        } else {
          logger.d(obj);
        }
      },
    ),
  ]);

  return dio;
}

/// API 에러 처리를 위한 커스텀 예외
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic error;

  const ApiException({
    required this.message,
    this.statusCode,
    this.error,
  });

  @override
  String toString() => 'ApiException: $message (statusCode: $statusCode)';
}
