import 'package:flutter/material.dart';

class TournamentInformationEntryPrize extends StatelessWidget {
  const TournamentInformationEntryPrize({
    Key? key,
    required this.entry,
    required this.prize,
  }) : super(key: key);

  final String entry;
  final int prize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTemplate(context, 'ENTRY', entry),
        _buildTemplate(context, 'PRIZE', '$prize%'),
      ],
    );
  }

  Expanded _buildTemplate(BuildContext context, String title, String value) {
    return Expanded(
      child: Row(
        children: [
          Text(title, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(width: 6),
          Text(value, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
