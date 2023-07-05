import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/count_tab.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/list_header.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/new_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/tab_header.dart';
import 'package:provider/provider.dart';

import '../../../../providers/home_provider.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, __) {
        final title = provider.stores?.firstOrNull?.name;
        return Scaffold(
          appBar: reservationTabAppBar(context, title),
          body: _buildBody(context),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    // 매장 없음
    // return const NoStore();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const ReservationCountTab(
          newData: 0,
          completeData: 12,
          focusedOn: FocusedOn.newData,
        ),
        ReservationListHeader(
          date: '09.05(월)',
          startAt: '19:00',
          onOneClickCancelButtonPressed: () {},
        ),

        Expanded(
          child: ListView.builder(
            itemBuilder: (_, __) => const ReservationItem(
              date: "10:35",
              status: Status.complete,
              reservedAt: 38,
              time: "10:35",
              count: "3",
              isCoupon: true,
              shopName: "몬스터 홀덤펍",
              userNickname: "유저닉네임",
              userType: UserType.vip,
            ),
            itemCount: 4,
          ),
        ),

        // 데이터 없음
        // Expanded(child: const ReservationNoData()),
      ],
    );
  }
}
