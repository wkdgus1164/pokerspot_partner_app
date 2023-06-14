import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class HomeRecentReservation extends StatelessWidget {
  const HomeRecentReservation({
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
            '지난 예약 현황',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Divider(
          color: lightColorScheme.outline,
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: padding16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '최근 일주일',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                Text(
                  '31명',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
        _buildRefreshButton(time, onRefreshButtonPressed),
      ],
    );
  }

  Padding _buildRefreshButton(String time, Function() onRefreshButtonPressed) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.grey.shade400,
        ),
        onPressed: onRefreshButtonPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time, style: const TextStyle(fontSize: 13)),
            const SizedBox(width: 4),
            Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: lightColorScheme.outline,
                ),
                color: Colors.white,
              ),
              child: SvgPicture.asset(Assets.setting.path),
            ),
          ],
        ),
      ),
    );
  }
}
