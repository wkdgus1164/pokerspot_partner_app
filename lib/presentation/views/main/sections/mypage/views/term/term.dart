import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class TermView extends StatelessWidget {
  const TermView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.light,
        left: Icons.keyboard_arrow_left_rounded,
        isCenterLogo: false,
        text: '약관 및 정책',
      ),
      body: Container(
        padding: const EdgeInsets.all(padding16),
        child: Text(
          'lorem ipsum dolor sit amet, consectetur adip dolor adipisicing elit, sed do eiusmod tempor incididunt ut labore et do laborum magnam aliqua. Ut enim ad minim veniam, quis nostrud',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
      ),
    );
  }
}
