import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/components/menu_item.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/components/myinfo.dart';

class MypageView extends StatelessWidget {
  const MypageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        customAppBarTheme: CustomAppBarTheme.black,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '내정보',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MypageMyinfo(),
            MypageMenuItem(text: '공지사항', icon: Assets.notice.path),
            MypageMenuItem(text: '알림설정', icon: Assets.settingNoti.path),
            MypageMenuItem(text: '1 : 1 문의', icon: Assets.ask.path),
            MypageMenuItem(text: '약관 및 정책', icon: Assets.term.path),
          ],
        ),
      ),
    );
  }
}
