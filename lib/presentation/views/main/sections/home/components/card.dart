import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: lightColorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [cardShadow],
      ),
      child: child,
    );
  }
}
