import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/models/notice/notice.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';

class NoticeRepository {
  final DioClient _dio;

  NoticeRepository(this._dio);

  /// 공지사항 목록 조회
  Future<List<NoticeModel>> getNotices({int page = 1}) async {
    try {
      final response = await _dio.get(
        '/notices',
        queryParameters: {'page': page},
      );
      return (response.data['noticeTitles'] as List)
          .map((e) => NoticeModel.fromJson(e))
          .toList();
    } catch (e) {
      return [];
    }
  }

  /// 공지사항 상세 조회
  Future<NoticeModel?> getNotice(int id) async {
    try {
      final response = await _dio.get('/notices/$id');
      return NoticeModel.fromJson(response.data);
    } catch (e) {
      if (e is DioError) {
        return e.response?.data['message'];
      }
      rethrow;
    }
  }
}
