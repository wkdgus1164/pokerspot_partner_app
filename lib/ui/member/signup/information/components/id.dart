import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class SignupId extends StatelessWidget {
  const SignupId({Key? key}) : super(key: key);

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
        errorText: '아이디 양식에 맞지 않습니다.',
        suffixIcon: Container(
          width: 80,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 6, bottom: 6, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(
            '중복확인',
            style: caption.copyWith(color: textColor),
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
            color: const Color.fromARGB(255, 42, 50, 59),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: padding10),
        TextFormField(
          decoration: textFieldDecoration(),
          keyboardType: TextInputType.text,
          maxLength: 12,
          minLines: 1,
          maxLines: 1,
          onEditingComplete: onEditingComplete,
          onChanged: onTextFieldChanged,
          obscureText: false,
        ),
        const SizedBox(height: padding10),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            '영문+숫자 조합 4~12자리',
            style: caption.copyWith(
              color: const Color.fromARGB(255, 102, 111, 123),
            ),
          ),
        ),
      ],
    );
  }

  onEditingComplete() {}

  onTextFieldChanged(String value) {}
}
