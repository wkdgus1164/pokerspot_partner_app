import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class MemberBreakSinceTimeBanner extends StatelessWidget {
  const MemberBreakSinceTimeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: colorBrand95,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Text.rich(
        TextSpan(
          text: '포커스팟과 함께 매장을 관리하신 지 벌써 ',
          style: textTheme.bodyLarge!.copyWith(
            color: colorBrand40,
          ),
          children: const [
            TextSpan(
              text: '10일',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' 되셨어요!'),
          ],
        ),
      ),
    );
  }
}
