import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_dto.freezed.dart';
part 'signin_dto.g.dart';

/// 로그인 응답 데이터 DTO
@freezed
class SigninResponseDataDto with _$SigninResponseDataDto {
  /// ```json
  /// {
  ///   "accessToken": "example@email.com"
  /// }
  /// ```
  const factory SigninResponseDataDto({
    required String accessToken,
  }) = _SigninResponseDataDto;

  factory SigninResponseDataDto.fromJson(Map<String, dynamic> json) =>
      _$SigninResponseDataDtoFromJson(json);
}
