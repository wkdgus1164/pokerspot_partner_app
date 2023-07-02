import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/select/components/select_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class StoreSelectView extends StatelessWidget {
  const StoreSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: '매장 선택',
        left: Icons.close_rounded,
      ),
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
