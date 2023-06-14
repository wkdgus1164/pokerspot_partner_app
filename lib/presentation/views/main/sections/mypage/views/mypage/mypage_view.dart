import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage/components/menu_item.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage/components/myinfo.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class MypageView extends StatelessWidget {
  const MypageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.dark,
        text: '내정보',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MypageMyinfo(),
            MypageMenuItem(
              text: '공지사항',
              icon: Assets.notice.path,
              onTap: () => context.pushNamed(MemberRoutes.notice.path),
            ),
            MypageMenuItem(
              text: '이용약관',
              icon: Assets.term.path,
              onTap: () => context.pushNamed(MemberRoutes.term.path),
            ),
            MypageMenuItem(
              text: '개인정보처리방침',
              icon: Assets.term.path,
              onTap: () => context.pushNamed(MemberRoutes.privacyPolicy.path),
            ),
          ],
        ),
      ),
    );
  }
}
