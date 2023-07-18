import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/guest/views/components/filter_item.dart';

class GuestFilter extends StatelessWidget {
  const GuestFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: padding16,
          children: [
            GuestFilterItem(
              type: '전체',
              count: 4,
              isSelected: true,
              onPressed: () {},
            ),
            GuestFilterItem(
              type: '일반',
              count: 4,
              onPressed: () {},
            ),
            GuestFilterItem(
              type: '단골손님',
              count: 4,
              onPressed: () {},
            ),
            GuestFilterItem(
              type: '블랙리스트',
              count: 4,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
