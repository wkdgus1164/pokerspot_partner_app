import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class SignupPhoneNumber extends StatefulWidget {
  final ValueChanged<String> onTextFieldChanged;
  final String phoneNumber;
  final bool isVerified;

  const SignupPhoneNumber({
    Key? key,
    required this.onTextFieldChanged,
    this.phoneNumber = '',
    this.isVerified = false,
  }) : super(key: key);

  @override
  State<SignupPhoneNumber> createState() => _SignupPhoneNumberState();
}

class _SignupPhoneNumberState extends State<SignupPhoneNumber> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSet(
      initText: widget.phoneNumber,
      inputLabel: '휴대폰 번호',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputErrorText: _error,
      inputHintText: '휴대폰 번호 입력 (-제외)',
      onEditingComplete: onEditingComplete,
      onTextFieldChanged: (text) {
        widget.onTextFieldChanged.call(text);
        _validate(text);
      },
      textInputAction: TextInputAction.go,
      captionText: '대표자 명의의 휴대폰 번호를 입력해주세요.',
      enabled: !widget.isVerified,
    );
  }

  onEditingComplete() {}

  void _validate(String? value) {
    String? error;
    final phoneRegExp = RegExp(r'^\d{11}$');
    if (!phoneRegExp.hasMatch(value ?? '')) {
      error = '올바른 양식의 휴대폰 번호를 입력해주세요.';
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
