// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_dto.freezed.dart';
part 'signup_dto.g.dart';

/// 회원가입 응답 데이터 DTO
@freezed
class SignupResponseDataDto with _$SignupResponseDataDto {
  /// ```json
  /// {
  ///   "identifier": "example@email.com"
  /// }
  /// ```
  const factory SignupResponseDataDto({
    required String identifier,
  }) = _SignupResponseDataDto;

  factory SignupResponseDataDto.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseDataDtoFromJson(json);
}
