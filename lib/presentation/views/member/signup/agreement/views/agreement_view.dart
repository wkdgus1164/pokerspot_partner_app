import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/components/agreement_category.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/components/agreement_item.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/components/auto_check.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';

class SignupAgreementView extends StatelessWidget {
  const SignupAgreementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: '회원가입'),
      body: SafeArea(
        child: Container(
          width: 430,
          height: 802,
          padding: const EdgeInsets.all(16),
          color: lightColorScheme.surface,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  '약관 동의',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    AgreementAutoCheck(
                      isChecked: false,
                      onCheckboxChanged: () {},
                    ),
                    const SizedBox(height: 16),
                    const Divider(height: 1, thickness: 1),
                    const SizedBox(height: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AgreementCategory(text: '필수'),
                        SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              AgreementItem(
                                agreementTitle: '서비스 이용약관 동의',
                                isChecked: true,
                              ),
                              AgreementItem(agreementTitle: '개인정보 처리방침 동의'),
                              AgreementItem(agreementTitle: '민감정보 수집 및 이용 동의'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AgreementCategory(text: '선택'),
                        SizedBox(height: 16),
                        Column(
                          children: [
                            AgreementItem(
                              agreementTitle: '푸시 서비스 수신 동의',
                              isChecked: true,
                            ),
                            AgreementItem(agreementTitle: '광고 및 마케팅 정보 수신 동의'),
                            AgreementItem(
                                agreementTitle: '이벤트 및 프로모션 정보 수신 동의'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomFilledButton(
                text: '동의하기',
                theme: CustomFilledButtonTheme.primary,
                onPressed: () => context.pushNamed(MemberRoutes.signup.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
