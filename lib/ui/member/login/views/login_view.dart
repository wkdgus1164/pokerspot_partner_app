import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/components/button/text_button.dart';
import 'package:pokerspot_partner_app/common/components/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_with_delete_icon.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              SvgPicture.asset(Assets.textLogo.path),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                  color: primaryColor.withAlpha(20),
                ),
                child: Text(
                  '사장님 전용',
                  style: caption.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(
                  left: padding16,
                  right: padding16,
                ),
                child: Column(
                  children: [
                    CustomTextFieldWithDeleteIcon(
                      hintText: '아이디',
                      textInputType: TextInputType.text,
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: padding16),
                    CustomTextFieldWithDeleteIcon(
                      hintText: '비밀번호',
                      textInputType: TextInputType.visiblePassword,
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: padding16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomCheckbox(
                          value: false,
                          onChanged: () {},
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
                      onPressed: () {},
                    ),
                    const SizedBox(height: padding32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '아직 회원이 아니신가요?',
                          style: label.copyWith(
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        CustomTextButton(
                          text: '회원가입하기',
                          color: primaryColor,
                          onClick: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: padding64),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '로그인 전 둘러보기',
                      style: label.copyWith(color: textColor),
                    ),
                    Icon(Icons.chevron_right, color: textColor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
