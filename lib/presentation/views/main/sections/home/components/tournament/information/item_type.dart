import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/models/tournament_model.dart';

class ItemType extends StatelessWidget {
  const ItemType({
    Key? key,
    required this.isAvailable,
    required this.tournamentType,
  }) : super(key: key);

  final bool isAvailable;
  final TournamentType tournamentType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        color:
            isAvailable ? const Color.fromRGBO(112, 156, 237, 1) : greyVariant2,
      ),
      child: Text(
        tournamentType == TournamentType.daily ? '데일리 토너' : '시드권 토너',
        style: const TextStyle(fontSize: 10, color: Colors.white),
      ),
    );
  }
}
