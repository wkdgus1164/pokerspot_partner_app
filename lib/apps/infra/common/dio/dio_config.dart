/// API 서버 설정
class DioConfig {
  /// API 서버 기본 URL
  static const String baseUrl = 'https://api.pokerspot.co.kr/';

  /// 연결 타임아웃 (초)
  static const int connectTimeout = 5;

  /// 수신 타임아웃 (초)
  static const int receiveTimeout = 3;

  /// 기본 헤더
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  /// 응답의 error 필드 존재 여부로 성공/실패 판단
  static bool isSuccessStatusCode(int? statusCode) =>
      statusCode != null && statusCode >= 200 && statusCode < 300;
}
