import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/providers/notice_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/notice/components/item.dart';
import 'package:provider/provider.dart';

import '../../../../../../locator.dart';

class NoticeView extends StatelessWidget {
  const NoticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('공지사항')),
      body: SafeArea(
        child: ChangeNotifierProvider<NoticeProvider>(
          create: (_) => locator(),
          child: Consumer<NoticeProvider>(
            builder: (_, provider, __) {
              return ListView.builder(
                itemCount: provider.notices.length,
                itemBuilder: (_, int index) {
                  final notice = provider.notices[index];
                  return MoreNoticeItem(
                    onClick: () {
                      provider.getNotice(notice.id);
                    },
                    date: '21시간 전',
                    title: notice.title,
                    content: notice.content,
                    isExpand: provider.isExpands[index],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
