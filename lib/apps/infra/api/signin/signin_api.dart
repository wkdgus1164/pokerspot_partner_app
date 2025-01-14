import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signin/dto/signin_dto.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signin/input/signin_input.dart';
import 'package:pokerspot_partner_app/apps/infra/common/dio/dio_provider.dart';
import 'package:pokerspot_partner_app/apps/infra/common/models/api_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin_api.g.dart';

/// 로그인 관련 API 클라이언트
///
/// 파트너 로그인과 관련된 모든 API 요청을 처리합니다.
/// Retrofit을 사용하여 HTTP 통신을 구현하고,
/// Riverpod을 통해 의존성을 주입받습니다.
@RestApi()
abstract class SigninApi {
  /// SigninApi 인스턴스를 생성합니다.
  ///
  /// [dio] - API 통신에 사용할 Dio 인스턴스
  factory SigninApi(Dio dio) = _SigninApi;

  /// 파트너 로그인 API
  ///
  /// [POST] /api/v1/partners/signin
  ///
  /// 파트너 계정을 로그인합니다.
  ///
  /// [input] - 로그인 입력 데이터
  /// - identifier: 사용자 식별자 (이메일)
  /// - password: 비밀번호
  @POST('/api/v1/partners/signin')
  Future<ApiResponse<SigninResponseDataDto>> signin({
    @Body() required SigninInput input,
  });
}

/// SigninApi 프로바이더
///
/// SigninApi 인스턴스를 제공하는 Riverpod 프로바이더입니다.
/// [dioProvider]를 통해 Dio 인스턴스를 주입받아 SigninApi를 생성합니다.
@riverpod
SigninApi signinApi(Ref ref) {
  return SigninApi(ref.watch(dioProvider));
}
