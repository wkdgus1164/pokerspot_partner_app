import 'package:pokerspot_partner_app/data/models/partner/sign_in_request.dart';
import 'package:pokerspot_partner_app/data/models/partner/signup_request.dart';
import 'package:pokerspot_partner_app/data/models/store/store.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../models/partner/partner.dart';
import '../models/partner/phone_validate_request.dart';

class PartnerRepository {
  final DioClient _dio;

  PartnerRepository(this._dio);

  /// 파트너 정보 조회
  Future<PartnerModel?> getPartner() async {
    try {
      final response = await _dio.get('/partners');
      return PartnerModel.fromJson(response.data);
    } catch (e) {
      Logger.e(e);
      return null;
    }
  }

  /// 사용 가능한 아이디 확인
  Future<bool> idValidate(String identifier) async {
    final response = await _dio.post(
      '/partners/signup/id-validate',
      data: {
        'identifier': identifier,
      },
    );
    return response.data['isPossible'];
  }

  /// 휴대폰 본인 인증 검증
  Future<bool> phoneValidate(PhoneValidateRequestModel data) async {
    final response = await _dio.post('/partners/signup/phone-validate');
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  /// 회원 가입
  Future<bool> signup(SignupRequestModel data) async {
    final response = await _dio.post(
      '/partners/signup',
      data: data.toJson(),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  /// 로그인
  Future<String?> signIn(SignInRequestModel data) async {
    try {
      final response = await _dio.post(
        '/partners/signin',
        data: data.toJson(),
      );
      if (response.statusCode == 201) {
        return response.data['accessToken'];
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  /// 메인 - 매장 리스트, 제휴 현황 / 매장 관리 - 리스트 조회
  Future<List<StoreModel>> getStores() async {
    try {
      final response = await _dio.get('/partners/stores');
      return (response.data['stores'] as List)
          .map((e) => StoreModel.fromJson(e))
          .toList();
    } catch (e) {
      return [];
    }
  }
}
