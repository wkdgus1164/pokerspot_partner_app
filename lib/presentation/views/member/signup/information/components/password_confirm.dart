import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class SignupPasswordConfirm extends StatefulWidget {
  final ValueChanged<String> onTextFieldChanged;
  final String? password;

  const SignupPasswordConfirm({
    Key? key,
    required this.onTextFieldChanged,
    this.password,
  }) : super(key: key);

  @override
  State<SignupPasswordConfirm> createState() => _SignupPasswordConfirmState();
}

class _SignupPasswordConfirmState extends State<SignupPasswordConfirm> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      inputLabel: '비밀번호 확인',
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      inputErrorText: _error,
      inputHintText: '비밀번호 확인',
      maxLines: 1,
      maxLength: 12,
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
    if (widget.password != value) {
      error = '입력하신 비밀번호와 다릅니다.';
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
