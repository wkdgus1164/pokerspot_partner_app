import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class PartnershipSuccessView extends StatelessWidget {
  const PartnershipSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('제휴 결제 완료'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: lightColorScheme.primary,
                    size: 48,
                  ),
                  const SizedBox(height: padding16),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '결제가 완료되었습니다.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: customColorScheme.onSurface1,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(height: padding16),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '결제상품: 1개월 제휴',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding16),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => context.pushReplacement(
                  CustomRouter.partnership.path,
                ),
                child: const Text('확인'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
