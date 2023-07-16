import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class TournamentsItemSwitches extends StatelessWidget {
  const TournamentsItemSwitches({
    super.key,
    required this.firstSwitchValue,
    this.onFirstSwitchChanged,
    required this.secondSwitchValue,
    this.onSecondSwitchChanged,
  });

  final bool firstSwitchValue;
  final Function(bool)? onFirstSwitchChanged;
  final bool secondSwitchValue;
  final Function(bool)? onSecondSwitchChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildwitchSet(context, '당일 진행', firstSwitchValue, onFirstSwitchChanged,
            !firstSwitchValue),
        _buildwitchSet(context, '실시간 진행', secondSwitchValue,
            onSecondSwitchChanged, !secondSwitchValue),
      ],
    );
  }

  Widget _buildwitchSet(
    BuildContext context,
    String text,
    bool switchValue,
    Function(bool)? onSwitchChanged,
    bool isLastItem,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(padding16),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: isLastItem ? Colors.transparent : lightColorScheme.outline,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: customColorScheme.onSurface2,
                  ),
            ),
            SizedBox(
              width: 34,
              height: 20,
              child: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: switchValue,
                  onChanged: onSwitchChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
