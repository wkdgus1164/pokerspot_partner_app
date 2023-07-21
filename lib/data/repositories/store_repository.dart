import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/data/models/store/biz_validate_request.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/data/models/store/store_coupon.dart';
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

  /// 메인 > 쿠폰 현황
  Future<List<StoreCouponModel>> getCoupons(String id) async {
    try {
      final response = await _dio.get('/stores/$id/coupons');
      return (response.data['storeCoupons'] as List)
          .map((e) => StoreCouponModel.fromJson(e))
          .toList();
    } catch (e) {
      Logger.e(e);
      return [];
    }
  }

  /// 메인 > 쿠폰 정보 > 남은 수량 수정
  Future<bool> updateCoupon(
      {required String storeId,
      required String couponId,
      required int remainAmount}) async {
    try {
      await _dio.patch('/stores/$storeId/coupons/$couponId', data: {
        'remainAmount': remainAmount,
      });
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  /// 매장관리 > 정보 수정
  Future<bool> updateStore(PartnerStoreModel model) async {
    try {
      await _dio.patch('/stores/$id', data: model.toJson());
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  /// 매장관리 > 제휴관리 > 제휴 신청
  Future<bool> applyAffiliate(
      {required String storeId, required String affiliateId}) async {
    try {
      await _dio
          .post('/stores/$id/affiliate', data: {'affiliateUid': affiliateId});
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  /// 매장관리 > 제휴관리 > 제휴 내역
  Future<bool> getAffiliate(PartnerStoreModel model) async {
    try {
      await _dio.get('/stores/$id/affiliate');
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  /// 매장관리 > 영업 중단
  Future<bool> pause(String id) async {
    try {
      await _dio.patch('/stores/$id/pause');
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  /// 매장관리 > 영업 중단 해제
  Future<bool> unPause(String id) async {
    try {
      await _dio.patch('/stores/$id/unpause');
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }
}
