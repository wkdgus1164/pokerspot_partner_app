import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/select/components/select_item.dart';

class StoreSelectView extends StatelessWidget {
  const StoreSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('매장 선택')),
      body: Container(
        color: lightColorScheme.surface,
        padding: const EdgeInsets.all(padding16),
        child: const SingleChildScrollView(
          child: Wrap(
            runSpacing: padding16,
            children: [
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
              ShopSelectItem(),
            ],
          ),
        ),
      ),
    );
  }
}
