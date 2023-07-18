import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class MypageMyinfo extends StatelessWidget {
  const MypageMyinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (_, provider, __) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: padding16,
            vertical: padding24,
          ),
          color: lightColorScheme.surfaceVariant,
          child: Text(
            '${provider.partner?.identifier}님, 안녕하세요.',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        );
      },
    );
  }
}
