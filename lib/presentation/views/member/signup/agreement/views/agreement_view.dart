import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/components/agreement_category.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/components/agreement_item.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/components/auto_check.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/signup_provider.dart';

class SignupAgreementView extends StatelessWidget {
  const SignupAgreementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('회원가입')),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: lightColorScheme.surface,
          child: Consumer<SignupProvider>(builder: (_, provider, __) {
            return Column(
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
                        isChecked: provider.isAllAgree,
                        onCheckboxChanged: () {
                          provider.setIsAllAgree(!provider.isAllAgree);
                        },
                      ),
                      const SizedBox(height: 16),
                      const Divider(height: 1, thickness: 1),
                      const SizedBox(height: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AgreementCategory(text: '필수'),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              children: [
                                AgreementItem(
                                  agreementTitle: '서비스 이용약관 동의',
                                  isChecked: provider.agreement.service,
                                  onCheckedChanged: () => provider.setAgreement(
                                      provider.agreement
                                        ..service =
                                            !provider.agreement.service),
                                ),
                                AgreementItem(
                                  agreementTitle: '개인정보 처리방침 동의',
                                  isChecked: provider.agreement.privacy,
                                  onCheckedChanged: () => provider.setAgreement(
                                      provider.agreement
                                        ..privacy =
                                            !provider.agreement.privacy),
                                ),
                                AgreementItem(
                                  agreementTitle: '민감정보 수집 및 이용 동의',
                                  isChecked: provider.agreement.sensitivity,
                                  onCheckedChanged: () => provider.setAgreement(
                                      provider.agreement
                                        ..sensitivity =
                                            !provider.agreement.sensitivity),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AgreementCategory(text: '선택'),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              children: [
                                AgreementItem(
                                  agreementTitle: '푸시 서비스 수신 동의',
                                  isChecked: provider.agreement.push,
                                  onCheckedChanged: () => provider.setAgreement(
                                      provider.agreement
                                        ..push = !provider.agreement.push),
                                ),
                                AgreementItem(
                                  agreementTitle: '광고 및 마케팅 정보 수신 동의',
                                  isChecked: provider.agreement.marketing,
                                  onCheckedChanged: () => provider.setAgreement(
                                      provider.agreement
                                        ..marketing =
                                            !provider.agreement.marketing),
                                ),
                                AgreementItem(
                                  agreementTitle: '이벤트 및 프로모션 정보 수신 동의',
                                  isChecked: provider.agreement.event,
                                  onCheckedChanged: () => provider.setAgreement(
                                      provider.agreement
                                        ..event = !provider.agreement.event),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: provider.validateAgreement
                        ? () => context.push(CustomRouter.signup.path)
                        : null,
                    child: const Text('동의하기'),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
