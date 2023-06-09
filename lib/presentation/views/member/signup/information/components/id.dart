import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class SignupId extends StatefulWidget {
  final ValueChanged<String>? onTextFieldChanged;
  final VoidCallback? onCheckTap;
  final bool checkedDuplicateId;

  const SignupId({
    Key? key,
    this.onTextFieldChanged,
    this.onCheckTap,
    this.checkedDuplicateId = false,
  }) : super(key: key);

  @override
  State<SignupId> createState() => _SignupIdState();
}

class _SignupIdState extends State<SignupId> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    InputDecoration textFieldDecoration() {
      return InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        hintText: '아이디 입력',
        hintStyle: bodyMedium.copyWith(color: Colors.grey.shade400),
        errorText: _error,
        suffixIcon: InkWell(
          onTap: widget.onCheckTap,
          child: Container(
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 6, bottom: 6, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Text(
              widget.checkedDuplicateId ? '중복확인 완료' : '중복확인',
              style: caption.copyWith(color: textColor),
            ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '아이디',
          style: label.copyWith(
            color: greyVariant6,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: padding10),
        Text(
          '영문+숫자 조합 4~12자리',
          style: caption.copyWith(color: greyVariant1),
        ),
        const SizedBox(height: padding10),
        TextFormField(
          decoration: textFieldDecoration(),
          keyboardType: TextInputType.text,
          maxLength: 12,
          minLines: 1,
          maxLines: 1,
          onChanged: (text) {
            widget.onTextFieldChanged?.call(text);
            _validate(text);
          },
          obscureText: false,
        ),
      ],
    );
  }

  void _validate(String? value) {
    String? error;
    final idRegExp = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    if (!idRegExp.hasMatch(value ?? '')) {
      error = '아이디 양식에 맞지 않습니다.';
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
