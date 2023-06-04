import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';

class SignupPassword extends StatefulWidget {
  final ValueChanged<String> onTextFieldChanged;

  const SignupPassword({
    Key? key,
    required this.onTextFieldChanged,
  }) : super(key: key);

  @override
  State<SignupPassword> createState() => _SignupPasswordState();
}

class _SignupPasswordState extends State<SignupPassword> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '비밀번호',
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      maxLines: 1,
      maxLength: 12,
      inputErrorText: _error,
      inputHintText: '비밀번호 입력',
      captionText: '영문+숫자 조합 4~12자리',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: (text) {
        widget.onTextFieldChanged.call(text);
        _validate(text);
      },
    );
  }

  onEditingComplete() {}

  void _validate(String? value) {
    String? error;
    final passwordRegExp =
        RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    if (!passwordRegExp.hasMatch(value ?? '')) {
      error = '비밀번호 양식에 맞지 않습니다.';
    } else {
      error = null;
    }

    if (error != _error) {
      setState(() {
        _error = error;
      });
    }
  }
}
