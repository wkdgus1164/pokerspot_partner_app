import 'package:flutter/material.dart';
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
            onEditButtonPressed: () {},
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
