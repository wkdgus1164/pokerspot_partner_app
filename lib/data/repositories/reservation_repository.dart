import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../models/reservation/reservations.dart';

class ReservationRepository {
  final DioClient _dio;

  ReservationRepository(this._dio);

  /// 예약관리 > 매장 예약 리스트
  Future<ReservationsModel?> getReservations({
    required String id,
    int page = 1,
    required String status,
  }) async {
    try {
      final response = await _dio.get('/stores/$id/reservations');
      return ReservationsModel.fromJson(response.data);
    } catch (e) {
      Logger.e(e);
      return null;
    }
  }

  Future<String?> accept(String id) async {
    try {
      final response = await _dio.patch('/reservations/$id/accept');
      final rejectComment = response.data['rejectComment'] as String?;
      return rejectComment?.isNotEmpty == true ? rejectComment : null;
    } catch (e) {
      if (e is DioError) {
        final error = e.response?.data['error'];
        if (error == 'WRONG_STATUS') {
          return '접수대기 상태가 아닙니다.';
        }
        return '알수없는 예약입니다.';
      }
      return '알수없는 에러가 발생했습니다.';
    }
  }

  Future<String?> reject({required String id, required String comment}) async {
    try {
      final response = await _dio.patch(
        '/reservations/$id/reject',
        data: {'comment': comment},
      );
      final rejectComment = response.data['rejectComment'] as String?;
      return rejectComment?.isNotEmpty == true ? comment : null;
    } catch (e) {
      if (e is DioError) {
        final error = e.response?.data['error'];
        if (error == 'WRONG_STATUS') {
          return '접수대기 상태가 아닙니다.';
        }
        return '알수없는 예약입니다.';
      }
      return '알수없는 에러가 발생했습니다.';
    }
  }

  Future<bool> rejectAll({required String id, required String comment}) async {
    try {
      await _dio.patch(
        '/reservations/reject-all',
        data: {
          'storeUid': id,
          'comment': comment,
        },
      );
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  Future<bool> getPauseStatus(String id) async {
    try {
      final response =
          await _dio.patch('/stores/$id/reservations-pause-status');
      return response.data['isPaused'];
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  Future<bool> pause(String id) async {
    try {
      await _dio.patch('/stores/$id/reservations-pause');
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  Future<bool> unPause(String id) async {
    try {
      await _dio.patch('/stores/$id/reservations-unpause');
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }
}
