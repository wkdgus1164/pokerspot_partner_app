import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/buttons/verify_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:provider/provider.dart';

import '../../../../../../locator.dart';
import '../../business/components/owner_name.dart';
import '../../business/components/phone_number.dart';
import '../../information/components/email.dart';
import '../../information/components/id.dart';
import '../../information/components/password.dart';
import '../../information/components/password_confirm.dart';

class SignupRenewView extends StatelessWidget {
  const SignupRenewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        left: Icons.keyboard_arrow_left,
        text: '회원가입',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(padding16),
            child: ChangeNotifierProvider<SignupProvider>(
              create: (_) => locator(),
              child: Consumer<SignupProvider>(
                builder: (_, provider, __) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '가입 정보 입력',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: padding24),

                      // 아이디
                      SignupId(
                        onTextFieldChanged: provider.setId,
                        checkedDuplicateId: provider.checkedDuplicateId,
                        onCheckTap: () => provider.checkDuplicate(),
                      ),
                      const SizedBox(height: padding24),

                      // 비밀번호
                      SignupPassword(
                        onTextFieldChanged: provider.setPassword,
                        password: provider.password,
                      ),
                      const SizedBox(height: padding24),

                      // 비밀번호 확인
                      SignupPasswordConfirm(
                        password: provider.password,
                        checkPassword: provider.checkPassword,
                        onTextFieldChanged: provider.setCheckPassword,
                      ),
                      const SizedBox(height: padding24),

                      // 이메일
                      SignupEmail(onTextFieldChanged: provider.setEmail),
                      const SizedBox(height: padding24),

                      // 대표자명
                      SignupOwnerName(onTextFieldChanged: provider.setName),
                      const SizedBox(height: padding24),

                      // 휴대폰 번호
                      SignupPhoneNumber(
                        onTextFieldChanged: provider.setPhoneNumber,
                        isVerified: provider.checkedPhoneNumber,
                      ),
                      const SizedBox(height: padding24),

                      // 휴대폰 본인 인증
                      VerifyButton(
                        isVerified: provider.checkedPhoneNumber,
                        onPressed: provider.validateInput
                            ? () async {
                                final data = await context.pushNamed(
                                  MemberRoutes.signupCertification.path,
                                );
                                provider.setImpUid(
                                  data as Map<String, String>?,
                                );
                                await provider.checkPhoneNumber().then(
                                  (value) {
                                    if (!value) {
                                      showToast(
                                        context: context,
                                        message: '본인인증을 실패했습니다.',
                                      );
                                    }
                                  },
                                );
                              }
                            : null,
                      ),
                      const SizedBox(height: padding24),

                      // 가입 완료
                      CustomFilledButton(
                        theme: CustomFilledButtonTheme.primary,
                        text: '가입 완료',
                        onPressed: provider.validateConfirm
                            ? () async {
                                final result = await provider.signUp();
                                if (result == null && context.mounted) {
                                  context.pushNamed(
                                    MemberRoutes.signupSuccess.path,
                                  );
                                } else {
                                  showToast(
                                    context: context,
                                    message: result ?? '',
                                  );
                                }
                              }
                            : null,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
