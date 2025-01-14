import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_input.freezed.dart';
part 'signin_input.g.dart';

@freezed
class SigninInput with _$SigninInput {
  factory SigninInput({
    required String identifier,
    required String password,
  }) = _SigninInput;

  factory SigninInput.fromJson(Map<String, dynamic> json) =>
      _$SigninInputFromJson(json);
}
