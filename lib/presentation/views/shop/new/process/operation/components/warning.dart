import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

class ShopProcessOperationWarning extends StatelessWidget {
  const ShopProcessOperationWarning({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> warningTitles = ['기타펍 A란?', '기타펍 B란?', '공통 유의사항'];
    List<List<String>> warningContents = [
      [
        '게임이 일정한 금액(매장이용권)의 바이인을 통해 진행됩니다.',
        '게임의 종료시간이 정해져 있으며, 게임이 종료되면 보유중인 모든 칩(p)은 매장이용권으로 자동 환전됩니다.',
        '게임 참여시 일정 비율의 수수료(매장이용권)를 지불하여 참가하게 됩니다.\n(예시 : 이용권 5장으로 참가시 → 이용권 4장에 상응하는 칩을 제공하여 게임을 진행합니다. 나머지 1장은 수수료로 지불됩니다.)',
      ],
      [
        '게임이 일정한 금액(매장이용권)의 바이인을 통해 진행됩니다.',
        '게임의 종료시간이 따로 정해져있지않으며, 플레이어는 자유롭게 게임의 참여/퇴장이 가능합니다.',
        '플레이어가 게임 퇴장시에 보유중인 모든 칩(p)은 매장이용권으로 자동 환전됩니다.',
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
                                padding: const EdgeInsets.only(
                                  top: 6,
                                  bottom: padding10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 4),
                                    Text(
                                      '·',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.w900,
                                          ),
                                    ),
                                    const SizedBox(width: 6),
                                    Expanded(
                                      child: Text(
                                        warningContents[titleEntry.key]
                                            [contentEntry.key],
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
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
