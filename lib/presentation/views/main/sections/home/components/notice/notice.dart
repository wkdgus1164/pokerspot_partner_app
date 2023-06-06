import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/notice/notice_item.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/data/notice_data.dart';

class HomeNotice extends StatelessWidget {
  const HomeNotice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 더보기
    onMoreButtonPressed() {}

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
              Text('공지사항', style: titleLarge.copyWith(color: textColor)),
              CustomTextButton(
                text: '더보기',
                color: primaryColor,
                trailingIcon: TrailingIcon.arrowRight,
                onClick: onMoreButtonPressed,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: noticeList
                .asMap()
                .entries
                .map((entry) => HomeNoticeItem(
                      title: noticeList[entry.key].title,
                      createdAt: noticeList[entry.key].createdAt,
                      onItemPressed: () {},
                    ))
                .toList(),
          ),
        ),
        const SizedBox(height: padding10),
        const CustomDivider(),
      ],
    );
  }
}
