import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    this.onIDChanged,
    this.onPWChanged,
    this.onLogin,
    required this.onAutoLoginChecked,
    required this.onAutoLoginCheckboxChanged,
  });

  final Function(String)? onIDChanged;
  final Function(String)? onPWChanged;
  final VoidCallback? onLogin;
  final bool onAutoLoginChecked;
  final Function() onAutoLoginCheckboxChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding16, right: padding16),
      child: Column(
        children: [
          CustomTextField(
            hint: '아이디',
            keyboardType: TextInputType.text,
            onTextFieldChanged: onIDChanged,
          ),
          const SizedBox(height: padding16),
          CustomTextField(
            hint: '비밀번호',
            keyboardType: TextInputType.visiblePassword,
            onTextFieldChanged: onPWChanged,
            obscureText: true,
          ),
          const SizedBox(height: padding16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: onAutoLoginCheckboxChanged,
                  borderRadius: BorderRadius.circular(4),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
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
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => context.push(CustomRouter.findCategory.path),
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '회원정보 찾기',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onLogin,
              child: const Text('로그인'),
            ),
          ),
          const SizedBox(height: padding32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '아직 회원이 아니신가요?',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.grey.shade700,
                    ),
              ),
              const SizedBox(height: 6),
              TextButton(
                onPressed: () {
                  locator<SignupProvider>().reset();
                  context.push(CustomRouter.signupAgreement.path);
                },
                child: const Text('회원가입하기'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
