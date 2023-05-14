import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/blind_buyin/blind_buyin.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/header/store_header.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/header/tab_header.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/no_store.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/notice/notice.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/reservation/reservation.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/store_list/store_list.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/tournament/tournament.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: const SafeArea(
        child: Column(
          children: [
            HomeStoreHeader(name: '몬스터 홀덤펍'),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  // 매장 예약 현황
                  // HomeReservationStatus(),

                  // 블라인드 및 바이인
                  // HomeBlindBuyIn(),

                  // 당일 진행 토너먼트
                  // HomeTournament(),

                  // 공지사항
                  HomeNotice(),

                  // 제휴 현황
                  // HomeStore(),
                ],
              )),
            ),

            // 데이터 없음
            HomeNoStore(),
          ],
        ),
      ),
    );
  }
}
