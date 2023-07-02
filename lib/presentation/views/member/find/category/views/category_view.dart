import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';

class FindCategoryView extends StatelessWidget {
  const FindCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: '회원정보 찾기'),
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
                  '찾으실 정보를 선택하세요.',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: customColorScheme.onSurface1,
                      ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: CustomOutlinedButton(
                  onPressed: () => context.pushNamed(MemberRoutes.findId.path),
                  text: '아이디',
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: CustomOutlinedButton(
                  onPressed: () => context.pushNamed(MemberRoutes.findPw.path),
                  text: '비밀번호',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
