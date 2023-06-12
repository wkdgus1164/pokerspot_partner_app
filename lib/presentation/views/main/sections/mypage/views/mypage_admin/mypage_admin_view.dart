import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage_admin/components/information_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';

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
              Padding(
                padding: const EdgeInsets.all(padding16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const InformationItem(
                      title: '아이디',
                      value: 'jjn1024',
                    ),
                    const InformationItem(
                      title: '휴대폰 번호',
                      value: '010-0000-0000',
                    ),
                    const InformationItem(
                      title: '사업자등록번호',
                      value: '000-00-00000',
                    ),
                    const SizedBox(height: padding48),
                    CustomOutlinedButton(onPressed: () {}, text: '로그아웃'),
                    const SizedBox(height: padding16),
                    CustomOutlinedButton(onPressed: () {}, text: '회원탈퇴'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
