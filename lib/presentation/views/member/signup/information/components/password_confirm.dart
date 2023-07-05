import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class SignupPasswordConfirm extends StatelessWidget {
  final ValueChanged<String> onTextFieldChanged;
  final String? password;
  final String? checkPassword;

  const SignupPasswordConfirm({
    Key? key,
    required this.onTextFieldChanged,
    this.password,
    this.checkPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      initText: checkPassword ?? '',
      inputLabel: '비밀번호 확인',
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      inputErrorText: _validate,
      inputHintText: '비밀번호 확인',
      maxLines: 1,
      maxLength: 12,
      onTextFieldChanged: (text) {
        onTextFieldChanged.call(text);
      },
    );
  }

  String? get _validate {
    String? error;
    if (password != checkPassword && checkPassword?.isNotEmpty == true) {
      error = '입력하신 비밀번호와 다릅니다.';
    } else {
      error = null;
    }
    return error;
  }
}
