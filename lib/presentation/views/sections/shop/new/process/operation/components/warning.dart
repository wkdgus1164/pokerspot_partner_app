import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopProcessOperationWarning extends StatelessWidget {
  const ShopProcessOperationWarning({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> warningTitles = ['등록이 불가능한 매장', '공통 유의사항'];
    List<List<String>> warningContents = [
      [
        '토너먼트 펍을 제외한 모든 매장',
        '불법적인 행위가 이루어지는 매장\n(예시 : 링게임펍 , 캐쉬게임펍 등)',
        '사업자등록증상 업종 및 업태가 비정상적인 매장',
      ],
      [
        '매장에서 진행되는 모든 금액 , 또는 칩의 단위는 매장이용권 단위로 표시됩니다.',
        '매장에서 사용되는 칩은 현금으로 환전하실 수 없으며, 해당 칩은 매장 내 음료, 주류 또는 매장 이용권을 구매하는데에만 사용된다는 점을 명시합니다.',
        '토너먼트 Prize는 해당 가치에 상응하는 매장이용권으로 제공됩니다.',
        '그 이외 포커스팟은 홀덤펍의 정보 중개자로서, 해당 서비스 제공의 당사자가 아님을 고지하고 서비스의 예약 이용 및 환불, 불법적인 행위와 관련된 의무와 책임은 각 서비스 제공자에게 있습니다.',
      ],
    ];

    return Padding(
      padding: const EdgeInsets.only(top: padding10, left: 6),
      child: Column(
        children: warningTitles
            .asMap()
            .entries
            .map((titleEntry) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: padding24),
                    Text(
                      titleEntry.value,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 6),
                    Column(
                      children: warningContents
                          .asMap()
                          .entries
                          .map((contentEntry) => Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 4),
                                    Text(
                                      '·',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            color: customColorScheme.onSurface4,
                                          ),
                                    ),
                                    const SizedBox(width: 6),
                                    Expanded(
                                      child: Text(
                                        warningContents[titleEntry.key]
                                            [contentEntry.key],
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                              color:
                                                  customColorScheme.onSurface3,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
