import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/card.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/reservation/realtime_reservation.dart';

class HomeReservation extends StatelessWidget {
  const HomeReservation({
    Key? key,
    this.data,
  }) : super(key: key);

  final ReservationsStatusCountModel? data;

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
              waiting: data?.pending ?? 0,
              applied: data?.accept ?? 0,
              denied: data?.reject ?? 0,
              time: '19',
              onRefreshButtonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
