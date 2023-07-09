import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/register/views/components/selection.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/register/views/components/warning.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class PartnerRegisterView extends StatelessWidget {
  const PartnerRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('제휴 신청')),
      body: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PartnershipRegisterSelection(),
                  CustomDivider(),
                  PartnershipRegisterWarning(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomFilledButton(
              text: '제휴 신청하기',
              onPressed: () {
                context.pushReplacementNamed(
                  ShopRoutes.partnershipSuccess.path,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
