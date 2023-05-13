import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

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
        _buildTemplate('ENTRY', entry),
        _buildTemplate('PRIZE', '$prize%'),
      ],
    );
  }

  Expanded _buildTemplate(String title, String value) {
    return Expanded(
      child: Row(
        children: [
          Text(
            title,
            style: titleSmall.copyWith(
              color: const Color.fromRGBO(176, 176, 176, 1),
            ),
          ),
          const SizedBox(width: 6),
          Text(
            value,
            style: titleMedium.copyWith(
              color: const Color.fromRGBO(42, 50, 59, 1),
            ),
          ),
        ],
      ),
    );
  }
}
