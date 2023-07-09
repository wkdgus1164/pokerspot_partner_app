import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/operation/views/components/pub_type.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/operation/views/components/running_time.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class ShopEditOperationView extends StatelessWidget {
  const ShopEditOperationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShopEditOperationRunningTime(
          startAt: '19:00',
          finishAt: '마감 시까지',
          onStartPressed: () {},
          onFinishPressed: () {},
        ),
        const CustomDivider(),
        const ShopEditOperationPubType(),
      ],
    );
  }
}
