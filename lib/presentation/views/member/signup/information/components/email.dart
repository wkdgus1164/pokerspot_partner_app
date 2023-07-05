import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class SignupEmail extends StatefulWidget {
  final ValueChanged<String> onTextFieldChanged;
  final String email;

  const SignupEmail({
    Key? key,
    required this.onTextFieldChanged,
    this.email = '',
  }) : super(key: key);

  @override
  State<SignupEmail> createState() => _SignupEmailState();
}

class _SignupEmailState extends State<SignupEmail> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      initText: widget.email,
      inputLabel: '이메일 주소',
      keyboardType: TextInputType.emailAddress,
      isPassword: false,
      inputErrorText: _error,
      inputHintText: '이메일 입력',
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
    final emailRegExp = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$');
    if (!emailRegExp.hasMatch(value ?? '')) {
      error = '이메일 형식에 맞지 않습니다.';
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
