import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';

class SignupPassword extends StatelessWidget {
  const SignupPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '비밀번호',
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      maxLines: 1,
      maxLength: 12,
      inputErrorText: '비밀번호 양식과 맞지 않습니다.',
      inputHintText: '비밀번호 입력',
      captionText: '영문+숫자 조합 4~12자리',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: onTextFieldChanged,
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
