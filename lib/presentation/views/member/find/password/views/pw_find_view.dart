import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class PwFindView extends StatelessWidget {
  const PwFindView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: '비밀번호 찾기'),
      body: SafeArea(
        child: Container(
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
                  '가입 시 등록한 정보를 입력해주세요.',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 24),

              // 아이디
              CustomTextFieldSet(
                inputLabel: '아이디',
                captionText: '아이디를 입력해주세요.',
                inputHintText: '아이디',
                onTextFieldChanged: (value) {},
              ),
              const SizedBox(height: 24),

              // 대표자명
              CustomTextFieldSet(
                inputLabel: '대표자명',
                captionText: '사업자등록증에 기재된 대표자명을 입력해주세요.',
                inputHintText: '대표자명 입력',
                onTextFieldChanged: (value) {},
              ),
              const SizedBox(height: 24),

              // 휴대폰 번호
              CustomTextFieldSet(
                inputLabel: '휴대폰 번호',
                captionText: '대표자 명의의 휴대폰 번호를 입력해주세요.',
                inputHintText: '휴대폰 번호 입력 (-제외)',
                onTextFieldChanged: (value) {},
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),

              // 본인 인증
              SizedBox(
                width: double.infinity,
                child: CustomOutlinedButton(onPressed: () {}, text: '휴대폰 본인인증'),
              ),
              const Spacer(),

              // 다음
              CustomFilledButton(
                text: '다음',
                theme: CustomFilledButtonTheme.primary,
                onPressed: () => context.pushNamed(
                  MemberRoutes.findPwSuccess.path,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
