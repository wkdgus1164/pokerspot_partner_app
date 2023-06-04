import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';

class SignupOwnerName extends StatelessWidget {
  const SignupOwnerName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '대표자명',
      keyboardType: TextInputType.text,
      isPassword: false,
      inputErrorText: '사업자등록번호의 대표자명과 일치하지 않습니다.',
      inputHintText: '대표자명 입력',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: onTextFieldChanged,
      textInputAction: TextInputAction.go,
      captionText: '＊ 사업자 등록증에 기재된 대표자명을 입력해주세요.',
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
