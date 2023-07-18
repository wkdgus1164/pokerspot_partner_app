import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/mypage/components/menu_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/mypage/components/myinfo.dart';

class MypageView extends StatelessWidget {
  const MypageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('내정보')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MypageMyinfo(),
            Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
            MypageMenuItem(
              text: '손님관리',
              materialIcon: Icons.groups_outlined,
              onTap: () => context.push(CustomRouter.guest.path),
            ),
            MypageMenuItem(
              text: '내 정보 관리',
              materialIcon: Icons.badge_outlined,
              onTap: () => context.push(CustomRouter.notice.path),
            ),
            MypageMenuItem(
              text: '공지사항',
              svgIcon: Assets.notice.path,
              onTap: () => context.push(CustomRouter.notice.path),
            ),
            MypageMenuItem(
              text: '알림설정',
              materialIcon: Icons.settings_outlined,
              onTap: () => context.push(CustomRouter.notice.path),
            ),
            MypageMenuItem(
              text: '1 : 1 문의',
              svgIcon: Assets.ask.path,
              onTap: () => context.push(CustomRouter.notice.path),
            ),
            MypageMenuItem(
              text: '약관 및 정책',
              svgIcon: Assets.term.path,
              onTap: () => context.push(CustomRouter.term.path),
            ),
          ],
        ),
      ),
    );
  }
}
