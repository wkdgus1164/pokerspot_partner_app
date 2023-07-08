import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/count_tab.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/list_header.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/new_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/components/tab_header.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/picker_dialog/picker_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/selection_dialog/selection_dialog_utils.dart';
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
          onOneClickCancelButtonPressed: () {
            showSelectionDialog(
              context: context,
              title: '예약 일괄 취소',
              content: '12명의 예약을 취소하시겠습니까?',
              confirmText: '예약 취소',
              onConfirm: () {},
              cancelText: '취소',
              onCancel: () {},
            );
          },
        ),

        Expanded(
          child: ListView.builder(
            itemBuilder: (_, __) => ReservationItem(
              date: "10:35",
              status: Status.waiting,
              reservedAt: 38,
              time: "10:35",
              count: "3",
              isCoupon: true,
              shopName: "몬스터 홀덤펍",
              userNickname: "유저닉네임",
              userType: UserType.vip,
              onDenyButtonPressed: () {
                showPickerDialog(
                  context: context,
                  title: '예약 거절',
                  selections: [
                    '예약이 꽉 찼습니다.',
                    '곧 마감 시간입니다.',
                    '기타 사정으로 일찍 마감했습니다.',
                    '현재 영업시간이 아닙니다.',
                  ],
                  onCancel: () {},
                  onConfirm: () {},
                );
              },
              onConfirmButtonPressed: () {
                showSelectionDialog(
                  context: context,
                  title: '예약 접수',
                  content: '예약을 접수하시겠습니까?',
                  confirmText: '확인',
                  onConfirm: () {},
                  cancelText: '취소',
                  onCancel: () {},
                );
              },
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
