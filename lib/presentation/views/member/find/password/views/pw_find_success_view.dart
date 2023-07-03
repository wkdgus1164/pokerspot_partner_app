import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class PwFindSuccessView extends StatelessWidget {
  const PwFindSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: '비밀번호 변경'),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: lightColorScheme.surface,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '신규 비밀번호를 설정해 주세요.',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 24),
            CustomTextFieldSet(
              inputLabel: '신규 비밀번호',
              captionText: '신규 비밀번호를 입력해 주세요.',
              inputHintText: '신규 비밀번호',
              onTextFieldChanged: (v) {},
              isPassword: true,
              maxLines: 1,
            ),
            const SizedBox(height: 24),
            CustomTextFieldSet(
              inputLabel: '신규 비밀번호 확인',
              captionText: '신규 비밀번호를 다시 한 번 입력해 주세요.',
              inputHintText: '신규 비밀번호 확인',
              onTextFieldChanged: (v) {},
              isPassword: true,
              maxLines: 1,
            ),
            const Spacer(),
            CustomFilledButton(
              text: '로그인하기',
              theme: CustomFilledButtonTheme.primary,
              onPressed: () => context.pushNamed(MemberRoutes.login.path),
            ),
          ],
        ),
      ),
    );
  }
}
