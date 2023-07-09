import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/models/store/biz_validate_request.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../models/store/mtt_game.dart';

class StoreRepository {
  final DioClient _dio;

  StoreRepository(this._dio);

  /// 사업자 등록번호 검증
  Future<String?> bizValidate(BizValidateRequestModel data) async {
    try {
      await _dio.post(
        '/stores/biz-validate',
        data: data.toJson(),
      );
      return null;
    } catch (e) {
      if (e is DioError) {
        return e.response?.data['message'];
      }
      rethrow;
    }
  }

  /// 매장 이미지 업로드
  Future<String?> uploadImage(List<int> binaryData) async {
    try {
      FormData formData = FormData.fromMap({
        'image': MultipartFile.fromBytes(binaryData, filename: 'image.jpg'),
      });
      final response = await _dio.post('/stores/upload-image',
          data: formData,
          options: Options(
            headers: {'Content-Type': 'multipart/form-data'},
          ));
      return response.data['url'];
    } catch (e) {
      return null;
    }
  }

  /// Store 생성
  Future<Either<String, bool>> createStore(CreateStoreRequestModel data) async {
    try {
      await _dio.post(
        '/stores',
        data: data.toJson(),
      );
      return const Right(true);
    } catch (e) {
      if (e is DioError) {
        return Left(e.response?.data['message']);
      }
      Logger.e(e);
      rethrow;
    }
  }

  /// Store 생성
  Future<Either<String, bool>> storeValidate(String bizNumber) async {
    try {
      await _dio.post(
        '/stores/store-validate',
        data: {'bizNumber': bizNumber},
      );
      return const Right(true);
    } catch (e) {
      if (e is DioError) {
        return Left(e.response?.data['message']);
      }
      Logger.e(e);
      rethrow;
    }
  }

  /// 메인 > 실시간 예약 현황
  Future<Either<String, ReservationsStatusCountModel>>
      getReservationsStatusCount(String id) async {
    try {
      final response = await _dio.get('/stores/$id/reservations/status-count');
      return Right(ReservationsStatusCountModel.fromJson(response.data));
    } catch (e) {
      if (e is DioError) {
        return Left(e.response?.data['message']);
      }
      Logger.e(e);
      rethrow;
    }
  }

  /// 메인 > 매장 토너먼트 현황
  Future<Either<String, List<MttGameModel>>> getGames(String id) async {
    try {
      final response = await _dio.get('/stores/$id/games');
      Logger.d(response.data);
      return Right((response.data['mttGames'] as List)
          .map((e) => MttGameModel.fromJson(e))
          .toList());
    } catch (e) {
      if (e is DioError) {
        return Left(e.response?.data['message']);
      }
      Logger.e(e);
      rethrow;
    }
  }
}
