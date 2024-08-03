import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key,
    required this.buyIn,
    required this.entry,
    required this.blup,
    required this.prize,
    required this.duration,
  });

  final int buyIn;
  final int entry;
  final int blup;
  final int prize;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _buildRow(
          title: 'BUY-IN',
          value: '${buyIn.toString()} Ticket',
        ),
        _buildRow(
          title: 'ENTRY',
          value: entry.toString(),
        ),
        _buildRow(
          title: 'BL-UP',
          value: '${blup.toString()}분',
        ),
        _buildRow(
          title: 'PRIZE',
          value: '${prize.toString()}%',
        ),
        _buildRow(
          title: 'DURATION',
          value: '${duration.toString()}분',
        ),
      ],
    );
  }

  Padding _buildRow({
    required String title,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal,
              color: colorGrey60,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: colorGrey40,
            ),
          ),
        ],
      ),
    );
  }
}
