import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';

class SignupEmail extends StatelessWidget {
  const SignupEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '이메일 주소',
      keyboardType: TextInputType.emailAddress,
      isPassword: false,
      inputErrorText: '이메일 형식이 맞지 않습니다.',
      inputHintText: '이메일 입력',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: onTextFieldChanged,
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
