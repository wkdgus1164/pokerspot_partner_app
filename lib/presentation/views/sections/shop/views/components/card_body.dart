import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/views/components/menu_buttons.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/views/components/menu_info.dart';

class ShopCardBody extends StatelessWidget {
  const ShopCardBody({
    super.key,
    required this.title,
    required this.type,
    required this.status,
    required this.thumbnail,
    required this.onEditButtonPressed,
    required this.onCorporateButtonPressed,
  });

  final String title;
  final String type;
  final String status;
  final String thumbnail;
  final Function() onEditButtonPressed;
  final Function() onCorporateButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ShopCardMenuInfo(
            title: title,
            type: type,
            status: status,
            thumbnail: thumbnail,
          ),
          const Divider(height: 40, thickness: 1),
          ShopCardMenuButtons(
            onEditButtonPressed: onEditButtonPressed,
            onCorporateButtonPressed: onCorporateButtonPressed,
          ),
        ],
      ),
    );
  }
}
