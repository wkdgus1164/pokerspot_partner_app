import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/components/button/text_button.dart';
import 'package:pokerspot_partner_app/common/components/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_with_delete_icon.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    this.onIDChanged,
    this.onPWChanged,
    required this.onAutoLoginChecked,
    required this.onAutoLoginCheckboxChanged,
    required this.onSignupButtonPressed,
  });

  final Function(String)? onIDChanged;
  final Function(String)? onPWChanged;
  final bool onAutoLoginChecked;
  final Function() onAutoLoginCheckboxChanged;
  final Function() onSignupButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding16, right: padding16),
      child: Column(
        children: [
          CustomTextFieldWithDeleteIcon(
            hintText: '아이디',
            textInputType: TextInputType.text,
            onChanged: onIDChanged,
          ),
          const SizedBox(height: padding16),
          CustomTextFieldWithDeleteIcon(
            hintText: '비밀번호',
            textInputType: TextInputType.visiblePassword,
            onChanged: onPWChanged,
          ),
          const SizedBox(height: padding16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomCheckbox(
                value: onAutoLoginChecked,
                onChanged: onAutoLoginCheckboxChanged,
              ),
              const SizedBox(width: 10),
              Text(
                '로그인 상태 유지',
                style: label.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: padding32),
          CustomButton(
            text: '로그인',
            customButtonTheme: CustomButtonTheme.primary,
            onPressed: () {
              context.pushNamed(BottomNavigationRoutes.home.path);
            },
          ),
          const SizedBox(height: padding32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '아직 회원이 아니신가요?',
                style: label.copyWith(color: Colors.grey.shade700),
              ),
              const SizedBox(height: 6),
              CustomTextButton(
                text: '회원가입하기',
                color: primaryColor,
                onClick: onSignupButtonPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
