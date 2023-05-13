import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/card.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/reservation/realtime_reservation.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/reservation/recent_reservation.dart';

class HomeReservationStatus extends StatelessWidget {
  const HomeReservationStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(247, 248, 249, 1),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          padding16,
          padding24,
          padding10,
          padding16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '매장 예약 현황',
              style: titleLarge.copyWith(color: textColor),
            ),
            const SizedBox(height: padding16),
            HomeCard(
              child: HomeRealtimeReservation(
                waiting: 8,
                applied: 4,
                denied: 4,
                time: '19',
                onRefreshButtonPressed: () {},
              ),
            ),
            const SizedBox(height: padding16),
            HomeCard(
              child: HomeRecentReservation(
                waiting: 8,
                applied: 4,
                denied: 4,
                time: '지난 7일: 9월 20일~9월 27일',
                onRefreshButtonPressed: () {},
              ),
            ),
            const SizedBox(height: padding10),
          ],
        ),
      ),
    );
  }
}
