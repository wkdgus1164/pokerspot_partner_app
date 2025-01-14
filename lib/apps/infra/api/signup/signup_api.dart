import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/dto/signup_dto.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/input/signup_input.dart';
import 'package:pokerspot_partner_app/apps/infra/common/dio/dio_provider.dart';
import 'package:pokerspot_partner_app/apps/infra/common/models/api_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_api.g.dart';

/// 회원가입 관련 API 클라이언트
///
/// 파트너 회원가입과 관련된 모든 API 요청을 처리합니다.
/// Retrofit을 사용하여 HTTP 통신을 구현하고,
/// Riverpod을 통해 의존성을 주입받습니다.
@RestApi()
abstract class SignupApi {
  /// SignupApi 인스턴스를 생성합니다.
  ///
  /// [dio] - API 통신에 사용할 Dio 인스턴스
  factory SignupApi(Dio dio) = _SignupApi;

  /// 파트너 회원가입 API
  ///
  /// [POST] /api/v1/partners/signup
  ///
  /// 새로운 파트너 계정을 생성합니다.
  /// 이메일 중복 검사를 포함하며, 중복된 이메일인 경우 에러를 반환합니다.
  ///
  /// [input] - 회원가입 입력 데이터
  /// - identifier: 사용자 식별자 (이메일)
  /// - password: 비밀번호
  @POST('/api/v1/partners/signup')
  Future<ApiResponse<SignupResponseDataDto>> signup({
    @Body() required SignupInput input,
  });
}

/// SignupApi 프로바이더
///
/// SignupApi 인스턴스를 제공하는 Riverpod 프로바이더입니다.
/// [dioProvider]를 통해 Dio 인스턴스를 주입받아 SignupApi를 생성합니다.
@riverpod
SignupApi signupApi(Ref ref) {
  return SignupApi(ref.watch(dioProvider));
}
