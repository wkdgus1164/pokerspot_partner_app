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

  /// 상태 코드 검증
  /// 200-299: 정상 응답
  /// 409: Conflict (이미 존재하는 리소스 등)
  static bool isSuccessStatusCode(int? statusCode) {
    if (statusCode == null) return false;
    return (statusCode >= 200 && statusCode < 300) || statusCode == 409;
  }
}
