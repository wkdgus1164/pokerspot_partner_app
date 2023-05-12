import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';

class SignupPasswordConfirm extends StatelessWidget {
  const SignupPasswordConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '비밀번호 확인',
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      inputErrorText: '입력하신 비밀번호와 다릅니다.',
      inputHintText: '비밀번호 확인',
      maxLines: 1,
      maxLength: 12,
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: onTextFieldChanged,
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
