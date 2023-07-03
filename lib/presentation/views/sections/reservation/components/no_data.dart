import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ReservationNoData extends StatelessWidget {
  const ReservationNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Icon(
                Icons.bar_chart_rounded,
                color: customColorScheme.onSurface4,
              ),
              const SizedBox(height: padding10),
              Text(
                '해당 매장은 현재\n예약 데이터가 존재하지 않습니다.',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface4,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
