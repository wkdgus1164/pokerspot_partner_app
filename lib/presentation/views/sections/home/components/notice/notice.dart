import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/notice/notice_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

import '../../../../../../data/models/notice/notice.dart';

class HomeNotice extends StatelessWidget {
  const HomeNotice({
    Key? key,
    required this.notices,
  }) : super(key: key);

  final List<NoticeModel> notices;

  @override
  Widget build(BuildContext context) {
    // 더보기
    onMoreButtonPressed() {
      context.push(CustomRouter.notice.path);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: padding10),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            padding16,
            padding16,
            padding10,
            0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '공지사항',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextButton(
                onPressed: onMoreButtonPressed,
                child: const Text('더보기'),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: notices
                .map(
                  (notice) => HomeNoticeItem(
                    title: notice.title,
                    createdAt:
                        DateFormat('yyyy. MM. dd.').format(notice.createdAt),
                    onItemPressed: () {},
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: padding10),
        const CustomDivider(),
      ],
    );
  }
}
