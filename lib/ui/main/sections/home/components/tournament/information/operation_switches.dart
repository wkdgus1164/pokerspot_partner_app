import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class TournamentOperationSwitches extends StatelessWidget {
  const TournamentOperationSwitches({
    Key? key,
    required this.isToday,
    required this.isLive,
  }) : super(key: key);

  final bool isToday;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Row(
        children: [
          _buildSwitch('당일 진행', isToday),
          const SizedBox(width: padding16),
          _buildSwitch('실시간 진행', isLive),
        ],
      ),
    );
  }

  Expanded _buildSwitch(String title, bool value) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: bodySmall.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          )),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              value: value,
              onChanged: (value) {},
              thumbColor: Colors.white,
              activeColor: const Color.fromRGBO(148, 159, 255, 1),
            ),
          ),
        ],
      ),
    );
  }
}
