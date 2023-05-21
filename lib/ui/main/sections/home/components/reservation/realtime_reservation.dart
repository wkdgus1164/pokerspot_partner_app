import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

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
            style: titleMedium.copyWith(color: textColor),
          ),
        ),
        Divider(color: greyVariant4, height: 1, thickness: 1),
        Padding(
          padding: const EdgeInsets.only(
            top: padding24,
            bottom: padding10,
          ),
          child: Row(
            children: [
              _buildWaiting(waiting),
              _buildApplied(applied),
              _buildDenied(denied),
            ],
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
          backgroundColor: greyVariant5,
          foregroundColor: Colors.grey.shade400,
        ),
        onPressed: onRefreshButtonPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '오늘 $time:00 기준',
              style: TextStyle(
                fontSize: 13,
                color: greyVariant1.withOpacity(0.6),
              ),
            ),
            const SizedBox(width: 4),
            Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: borderColor),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.refresh_rounded,
                color: Colors.black45,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildDenied(int denied) {
    return Expanded(
      child: Column(
        children: [
          Text('$denied', style: headlineLarge),
          const SizedBox(height: padding10),
          Text('예약거절', style: label.copyWith(color: textColor)),
        ],
      ),
    );
  }

  Expanded _buildApplied(int applied) {
    return Expanded(
      child: Column(
        children: [
          Text('$applied', style: headlineLarge),
          const SizedBox(height: padding10),
          Text('처리완료', style: label.copyWith(color: textColor)),
        ],
      ),
    );
  }

  Expanded _buildWaiting(int waiting) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Text(
                '$waiting',
                style: headlineLarge.copyWith(color: primaryColor),
              ),
              const SizedBox(height: padding10),
              Text('처리대기', style: label.copyWith(color: textColor)),
            ],
          ),
          Positioned(
            top: 0,
            left: 80,
            child: Image.asset(Assets.newIcon.path, width: 16),
          ),
        ],
      ),
    );
  }
}
