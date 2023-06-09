import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ReservationListHeader extends StatelessWidget {
  const ReservationListHeader({
    super.key,
    required this.date,
    required this.startAt,
    required this.onOneClickCancelButtonPressed,
  });

  final String date;
  final String startAt;
  final Function() onOneClickCancelButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: padding16,
        top: 6,
        bottom: 6,
        right: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: lightColorScheme.outline),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  date,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: customColorScheme.onSurface1,
                      ),
                ),
                const SizedBox(width: padding10),
                Text(
                  startAt,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: onOneClickCancelButtonPressed,
            child: const Text('예약 일괄취소'),
          ),
        ],
      ),
    );
  }
}
