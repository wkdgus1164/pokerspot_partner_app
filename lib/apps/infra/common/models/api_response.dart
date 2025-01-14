// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

/// API 응답의 기본 모델
/// [T]는 응답 데이터의 타입
@freezed
sealed class ApiResponse<T> with _$ApiResponse<T> {
  /// 성공 응답
  /// [data] - 응답 데이터
  /// [message] - 응답 메시지
  /// [timestamp] - 응답 시간
  const factory ApiResponse.success({
    required T data,
    required String message,
    required int timestamp,
  }) = _Success<T>;

  /// 실패 응답
  /// [error] - 에러 코드
  /// [message] - 에러 메시지
  /// [timestamp] - 응답 시간
  const factory ApiResponse.error({
    required String error,
    required String message,
    required int timestamp,
  }) = _Error<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    // error 필드가 있으면 에러 응답으로 처리
    if (json.containsKey('error')) {
      return ApiResponse<T>.error(
        error: json['error'] as String,
        message: json['message'] as String,
        timestamp: json['timestamp'] as int,
      );
    }

    // 그 외의 경우는 성공 응답으로 처리
    return ApiResponse<T>.success(
      data: fromJsonT(json['data'])!,
      message: json['message'] as String,
      timestamp: json['timestamp'] as int,
    );
  }
}
