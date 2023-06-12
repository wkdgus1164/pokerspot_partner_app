import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/notice/components/item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class NoticeView extends StatelessWidget {
  const NoticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.light,
        isCenterLogo: false,
        text: '공지사항',
        left: Icons.keyboard_arrow_left_rounded,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, int index) {
            return MoreNoticeItem(
              onClick: () {},
              date: '21시간 전',
              title: '공지사항 제목',
              content: '[공지사항] 공지사항이 표시되는 부분입니다.[공지사항] 공지사항이 표시되는 부분입니다.',
              isExpand: true,
            );
          },
        ),
      ),
    );
  }
}
