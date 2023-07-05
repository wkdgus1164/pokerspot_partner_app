import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class SignupPassword extends StatelessWidget {
  final ValueChanged<String> onTextFieldChanged;
  final String? text;
  final String password;

  const SignupPassword({
    Key? key,
    required this.onTextFieldChanged,
    this.text,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      initText: password,
      inputLabel: '비밀번호',
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      maxLines: 1,
      maxLength: 12,
      inputErrorText: _validate,
      inputHintText: '비밀번호 입력',
      captionText: '영문+숫자 조합 4~12자리',
      onTextFieldChanged: (text) {
        onTextFieldChanged.call(text);
      },
    );
  }

  String? get _validate {
    String? error;
    if (password.isEmpty) {
      return null;
    }
    final passwordRegExp =
        RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    if (!passwordRegExp.hasMatch(password)) {
      error = '비밀번호 양식에 맞지 않습니다.';
    }
    return error;
  }
}
