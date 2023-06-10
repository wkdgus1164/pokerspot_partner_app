import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_with_delete_icon.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    this.onIDChanged,
    this.onPWChanged,
    required this.onLogin,
    required this.onAutoLoginChecked,
    required this.onAutoLoginCheckboxChanged,
    required this.onSignupButtonPressed,
  });

  final Function(String)? onIDChanged;
  final Function(String)? onPWChanged;
  final VoidCallback onLogin;
  final bool onAutoLoginChecked;
  final Function() onAutoLoginCheckboxChanged;
  final Function() onSignupButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding16, right: padding16),
      child: Column(
        children: [
          CustomTextField(
            hintText: '아이디',
            textInputType: TextInputType.text,
            onChanged: onIDChanged,
          ),
          const SizedBox(height: padding16),
          CustomTextField(
            hintText: '비밀번호',
            textInputType: TextInputType.visiblePassword,
            onChanged: onPWChanged,
          ),
          const SizedBox(height: padding16),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: onAutoLoginCheckboxChanged,
              borderRadius: BorderRadius.circular(4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomCheckbox(
                      value: onAutoLoginChecked,
                      onChanged: onAutoLoginCheckboxChanged,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '로그인 상태 유지',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: padding16),
          CustomFilledButton(
            text: '로그인',
            theme: CustomFilledButtonTheme.primary,
            onPressed: onLogin,
          ),
          const SizedBox(height: padding32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '아직 회원이 아니신가요?',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.grey.shade700),
              ),
              const SizedBox(height: 6),
              CustomTextButton(
                text: '회원가입하기',
                theme: CustomTextButtonTheme.primary,
                onClick: onSignupButtonPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
