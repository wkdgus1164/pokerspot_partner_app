import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class CustomInterceptor extends Interceptor {
  final Logger logger;

  const CustomInterceptor({required this.logger});

  /// JSON 데이터를 보기 좋게 변환
  String _prettyJson(dynamic data) {
    try {
      if (data == null) return 'null';
      if (data is Map || data is List) {
        const encoder = JsonEncoder.withIndent('  ');
        return encoder
            .convert(data)
            .split('\n')
            .map((line) => '│   $line')
            .join('\n');
      }
      return data.toString();
    } catch (e) {
      return data.toString();
    }
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final StringBuffer logBuffer = StringBuffer();
    logBuffer.writeln('┌── API 요청 ──────────────────────────────────────');
    logBuffer.writeln('│ URL: ${options.uri}');
    logBuffer.writeln('│ METHOD: ${options.method}');
    logBuffer.writeln('│ Headers:');
    options.headers.forEach((key, value) {
      logBuffer.writeln('│   $key: $value');
    });
    if (options.data != null) {
      logBuffer.writeln('│ Body:');
      logBuffer.writeln(_prettyJson(options.data));
    }
    if (options.queryParameters.isNotEmpty) {
      logBuffer.writeln('│ Query Parameters:');
      logBuffer.writeln(_prettyJson(options.queryParameters));
    }
    logBuffer.writeln('└────────────────────────────────────────────────');

    logger.i(logBuffer.toString());
    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    final StringBuffer logBuffer = StringBuffer();
    logBuffer.writeln('┌── API 응답 ──────────────────────────────────────');
    logBuffer.writeln('│ URL: ${response.requestOptions.uri}');
    logBuffer.writeln('│ STATUS: ${response.statusCode}');
    logBuffer.writeln('│ Headers:');
    response.headers.forEach((name, values) {
      logBuffer.writeln('│   $name: ${values.join(', ')}');
    });
    logBuffer.writeln('│ Body:');
    logBuffer.writeln(_prettyJson(response.data));
    logBuffer.writeln('└────────────────────────────────────────────────');

    logger.i(logBuffer.toString());
    handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    final StringBuffer logBuffer = StringBuffer();
    logBuffer.writeln('┌── API 에러 ──────────────────────────────────────');
    logBuffer.writeln('│ URL: ${err.requestOptions.uri}');
    logBuffer.writeln('│ STATUS: ${err.response?.statusCode}');
    logBuffer.writeln('│ ERROR: ${err.error}');
    if (err.response != null) {
      logBuffer.writeln('│ Response Data:');
      logBuffer.writeln(_prettyJson(err.response?.data));
    }
    logBuffer.writeln('│ Stack Trace:');
    err.stackTrace.toString().split('\n').forEach((line) {
      logBuffer.writeln('│   $line');
    });
    logBuffer.writeln('└────────────────────────────────────────────────');

    logger.e(logBuffer.toString());
    handler.next(err);
  }
}
