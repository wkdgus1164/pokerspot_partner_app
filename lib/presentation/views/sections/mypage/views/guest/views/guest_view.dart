import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/guest/views/components/filter.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/guest/views/components/list_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/guest/views/components/search.dart';

class GuestView extends StatelessWidget {
  const GuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('손님관리')),
      body: Column(
        children: [
          // 필터
          const GuestFilter(),

          // 검색
          GuestSearchBar(onChanged: (value) {}),

          // 손님 리스트
          GuestListItem(
            guestType: GuestType.vip,
            latestNickname: '홍길동',
            originalNickname: '예전닉네임',
            latestVisitedDate: '2022.09.03',
            latestVisitedPlace: '몬스터 홀',
            onEditButtonPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => Container(
                  padding: const EdgeInsets.all(padding10),
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(padding16),
                        child: Text(
                          '홍길동 님을',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Divider(
                        color: lightColorScheme.outline,
                        height: 1,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          ListTile(
                            title: const Text('단골로 설정'),
                            onTap: () {},
                          ),
                          ListTile(
                            title: const Text('블랙리스트로 설정'),
                            onTap: () {},
                          ),
                          ListTile(
                            title: const Text('설정 없음'),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          GuestListItem(
            guestType: GuestType.common,
            latestNickname: '홍길동',
            latestVisitedDate: '2022.09.13',
            latestVisitedPlace: '몬스터 홀덤',
            onEditButtonPressed: () {},
          ),
          GuestListItem(
            guestType: GuestType.black,
            latestNickname: '홍길동',
            originalNickname: '예전닉네임',
            latestVisitedDate: '2022.09.23',
            latestVisitedPlace: '몬스터 홀덤펍',
            onEditButtonPressed: () {},
          ),
        ],
      ),
    );
  }
}
