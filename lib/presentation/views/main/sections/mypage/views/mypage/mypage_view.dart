import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage/components/menu_item.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage/components/myinfo.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';

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
              onTap: () {},
            ),
            // MypageMenuItem(text: '알림설정', icon: Assets.settingNoti.path),
            // MypageMenuItem(text: '1 : 1 문의', icon: Assets.ask.path),
            MypageMenuItem(
              text: '이용약관',
              icon: Assets.term.path,
              onTap: () {},
            ),
            MypageMenuItem(
              text: '개인정보처리방침',
              icon: Assets.term.path,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
