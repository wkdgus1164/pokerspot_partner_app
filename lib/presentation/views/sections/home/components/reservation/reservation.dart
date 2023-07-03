import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/card.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/reservation/realtime_reservation.dart';

class HomeReservation extends StatelessWidget {
  const HomeReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColorScheme.surfaceVariant,
      padding: const EdgeInsets.all(padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '매장 예약 현황',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface1,
                ),
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
        ],
      ),
    );
  }
}
