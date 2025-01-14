import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_input.freezed.dart';
part 'signup_input.g.dart';

@freezed
class SignupInput with _$SignupInput {
  factory SignupInput({
    required String identifier,
    required String password,
  }) = _SignupInput;

  factory SignupInput.fromJson(Map<String, dynamic> json) =>
      _$SignupInputFromJson(json);
}
