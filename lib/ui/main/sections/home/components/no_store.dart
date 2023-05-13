import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class HomeNoStore extends StatelessWidget {
  const HomeNoStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '등록된 매장이 없습니다.',
              style: label.copyWith(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: padding10),
            const CustomOutlinedButton(text: '신규 등록'),
          ],
        ),
      ),
    );
  }
}
