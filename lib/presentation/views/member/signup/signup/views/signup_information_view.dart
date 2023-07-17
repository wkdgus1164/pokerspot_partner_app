import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/components/email.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/components/id.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/components/owner_name.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/components/password.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/components/password_confirm.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/components/phone_number.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/verify_button.dart';
import 'package:provider/provider.dart';

class SignupInformationView extends StatelessWidget {
  const SignupInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController()
      ..text = locator<SignupProvider>().information.name;

    return Scaffold(
      appBar: AppBar(title: const Text('회원가입')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(padding16),
            child: Consumer<SignupProvider>(
              builder: (_, provider, __) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '가입 정보 입력',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: padding24),

                    // 아이디
                    SignupId(
                      id: provider.information.id,
                      onTextFieldChanged: provider.setId,
                      checkedDuplicateId: provider.checkedDuplicateId,
                      onCheckTap: () => provider.checkDuplicate(),
                    ),
                    const SizedBox(height: padding24),

                    // 비밀번호
                    SignupPassword(
                      onTextFieldChanged: provider.setPassword,
                      password: provider.information.password,
                    ),
                    const SizedBox(height: padding24),

                    // 비밀번호 확인
                    SignupPasswordConfirm(
                      password: provider.information.password,
                      checkPassword: provider.information.checkPassword,
                      onTextFieldChanged: provider.setCheckPassword,
                    ),
                    const SizedBox(height: padding24),

                    // 이메일
                    SignupEmail(
                      email: provider.information.email,
                      onTextFieldChanged: provider.setEmail,
                    ),
                    const SizedBox(height: padding24),

                    // 대표자명
                    SignupOwnerName(
                      controller: nameController,
                      onTextFieldChanged: provider.setName,
                    ),
                    const SizedBox(height: padding24),

                    // 휴대폰 번호
                    SignupPhoneNumber(
                      phoneNumber: provider.information.phoneNumber,
                      onTextFieldChanged: provider.setPhoneNumber,
                      isVerified: provider.checkedPhoneNumber,
                    ),
                    const SizedBox(height: padding24),

                    // 휴대폰 본인 인증
                    VerifyButton(
                      isVerified: provider.checkedPhoneNumber,
                      onPressed: provider.validateInput
                          ? () async {
                              final data = await context.push(
                                CustomRouter.signupCertification.path,
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
                                context.push(CustomRouter.signupSuccess.path);
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
    );
  }
}
