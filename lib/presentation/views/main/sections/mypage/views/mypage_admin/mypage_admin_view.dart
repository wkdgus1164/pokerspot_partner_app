import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage_admin/components/information_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:provider/provider.dart';

class MypageAdminView extends StatelessWidget {
  const MypageAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.light,
        isCenterLogo: false,
        text: '내 정보 관리',
        left: Icons.keyboard_arrow_left_rounded,
      ),
      body: SafeArea(
        child: Container(
          color: lightColorScheme.surface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<AuthProvider>(builder: (_, provider, __) {
                return Padding(
                  padding: const EdgeInsets.all(padding16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InformationItem(
                        title: '아이디',
                        value: provider.partner?.identifier ?? '',
                      ),
                      InformationItem(
                        title: '휴대폰 번호',
                        value: provider.partner?.phoneNumber ?? '',
                      ),
                      const SizedBox(height: padding48),
                      CustomOutlinedButton(
                          onPressed: () {
                            provider.logout();
                            context.goNamed(MemberRoutes.login.path);
                          },
                          text: '로그아웃'),
                      const SizedBox(height: padding16),
                      CustomOutlinedButton(onPressed: () {}, text: '회원탈퇴'),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
