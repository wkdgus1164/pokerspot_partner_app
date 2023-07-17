import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

class NoStore extends StatelessWidget {
  const NoStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              const SizedBox(height: padding64),
              Text(
                '등록된 매장이 없습니다.',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface3,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: padding16),
              CustomOutlinedButton(
                theme: CustomOutlinedButtonTheme.primary,
                text: '신규 등록',
                leadingIcon: Icons.add_rounded,
                onPressed: () => context.push(CustomRouter.shopNewIntro.path),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
