import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/button/text_button.dart';
import 'package:pokerspot_partner_app/common/components/divider/divider.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/notice/notice_item.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/data/notice_data.dart';

class HomeNotice extends StatelessWidget {
  const HomeNotice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: Text(
                  '공지사항',
                  style: titleLarge.copyWith(color: textColor),
                ),
              ),
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
            children: List.generate(
              noticeList.length,
              (index) => HomeNoticeItem(
                title: noticeList[index].title,
                createdAt: noticeList[index].createdAt,
                padding: index == 0
                    ? const EdgeInsets.only(
                        left: padding16,
                        right: padding10,
                        top: padding16,
                        bottom: padding16,
                      )
                    : const EdgeInsets.only(
                        right: padding10,
                        top: padding16,
                        bottom: padding16,
                      ),
              ),
            ),
          ),
        ),
        const SizedBox(height: padding10),
        const CustomDivider(),
      ],
    );
  }
}
