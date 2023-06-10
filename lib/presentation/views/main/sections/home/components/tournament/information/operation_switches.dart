import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

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
          _buildSwitch(context, '당일 진행', isToday),
          const SizedBox(width: padding16),
          _buildSwitch(context, '실시간 진행', isLive),
        ],
      ),
    );
  }

  Expanded _buildSwitch(BuildContext context, String title, bool value) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
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
