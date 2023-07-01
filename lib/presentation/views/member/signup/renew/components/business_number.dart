import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class SignupBusinessNumber extends StatelessWidget {
  const SignupBusinessNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '사업자등록번호',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputErrorText: '사업자등록번호 형식에 맞지 않습니다.',
      inputHintText: '-제외 숫자만 입력',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: onTextFieldChanged,
      textInputAction: TextInputAction.go,
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
