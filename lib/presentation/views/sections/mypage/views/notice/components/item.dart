// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/notice/components/body.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/notice/components/header.dart';

class MoreNoticeItem extends StatelessWidget {
  const MoreNoticeItem({
    super.key,
    required this.onClick,
    required this.date,
    required this.title,
    required this.content,
    required this.isExpand,
  });

  final Function() onClick;
  final String date;
  final String title;
  final String content;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onClick,
          child: MoreNoticeHeader(
            createdAt: date,
            title: title,
            isExpand: isExpand,
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          child: _Body(),
        ),
        const Divider(height: 1, thickness: 1),
      ],
    );
  }

  Widget _Body() {
    if (!isExpand) return Container();

    return MoreNoticeBody(content: content);
  }
}
