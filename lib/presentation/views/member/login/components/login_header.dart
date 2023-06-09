import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        SvgPicture.asset(Assets.textLogo.path),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
            color: lightColorScheme.primary.withAlpha(20),
          ),
          child: Text(
            '사장님 전용',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: lightColorScheme.primary,
                ),
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
