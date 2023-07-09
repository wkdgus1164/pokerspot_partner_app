import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class HomeRealtimeReservation extends StatelessWidget {
  const HomeRealtimeReservation({
    Key? key,
    required this.waiting,
    required this.applied,
    required this.denied,
    required this.time,
    required this.onRefreshButtonPressed,
  }) : super(key: key);

  final int waiting;
  final int applied;
  final int denied;
  final String time;
  final Function() onRefreshButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(padding16),
          child: Text(
            '실시간 예약 현황',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: customColorScheme.onSurface2,
                ),
          ),
        ),
        const Divider(height: 1, thickness: 1),
        Padding(
          padding: const EdgeInsets.only(
            top: padding24,
            bottom: padding10,
          ),
          child: Row(
            children: [
              _buildItem(context, true, waiting, '처리대기', false),
              _buildItem(context, false, applied, '처리완료', false),
              _buildItem(context, false, denied, '예약거절', false),
            ],
          ),
        ),
        const SizedBox(height: padding16),
      ],
    );
  }

  Expanded _buildItem(
    BuildContext context,
    bool isPrimary,
    int waiting,
    String status,
    bool isNew,
  ) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Text(
                '$waiting',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: isPrimary
                          ? lightColorScheme.primary
                          : customColorScheme.onSurface2,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: padding10),
              Text(
                status,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
          if (isNew) ...[
            Positioned(
              top: 0,
              left: 80,
              child: Image.asset(Assets.newIcon.path, width: 16),
            ),
          ],
        ],
      ),
    );
  }
}
