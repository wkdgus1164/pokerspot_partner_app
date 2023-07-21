import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ReservationNoData extends StatelessWidget {
  const ReservationNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            '모든 예약접수를 처리하였습니다.',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: customColorScheme.onSurface4,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
