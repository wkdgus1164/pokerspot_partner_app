import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';

class SignupPhoneNumber extends StatelessWidget {
  const SignupPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '휴대폰 번호',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputErrorText: '올바른 양식의 휴대폰 번호를 입력해주세요.',
      inputHintText: '휴대폰 번호 입력 (-제외)',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: onTextFieldChanged,
      textInputAction: TextInputAction.go,
      captionText: '＊ 대표자 명의의 휴대폰 번호를 입력해주세요.',
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
