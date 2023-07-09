import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/game/views/components/game_item.dart';

class ShopEditGameView extends StatelessWidget {
  const ShopEditGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ShopEditGameItem(
              name: '3만 데일리 토너먼트',
              type: TonerType.daily,
              startFee: 3,
              minEntry: 15,
              maxEntry: 0,
              prize: 80,
              isEveryday: true,
              targetToner: 'OOOO 토너먼트',
            ),
            ShopEditGameItem(
              name: '3만 데일리 토너먼트',
              type: TonerType.gtd,
              startFee: 3,
              minEntry: 15,
              maxEntry: 100,
              prize: 80,
              isEveryday: false,
              targetToner: 'OOOO 토너먼트',
            ),
            ShopEditGameItem(
              name: '3만 데일리 토너먼트',
              type: TonerType.daily,
              startFee: 3,
              minEntry: 15,
              maxEntry: 0,
              prize: 80,
              isEveryday: true,
              targetToner: 'OOOO 토너먼트',
            ),
            ShopEditGameItem(
              name: '3만 데일리 토너먼트',
              type: TonerType.daily,
              startFee: 3,
              minEntry: 15,
              maxEntry: 0,
              prize: 80,
              isEveryday: true,
              targetToner: 'OOOO 토너먼트',
            ),
            ShopEditGameItem(
              name: '3만 데일리 토너먼트',
              type: TonerType.gtd,
              startFee: 3,
              minEntry: 15,
              maxEntry: 100,
              prize: 80,
              isEveryday: false,
              targetToner: 'OOOO 토너먼트',
            ),
            ShopEditGameItem(
              name: '3만 데일리 토너먼트',
              type: TonerType.daily,
              startFee: 3,
              minEntry: 15,
              maxEntry: 0,
              prize: 80,
              isEveryday: true,
              targetToner: 'OOOO 토너먼트',
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
