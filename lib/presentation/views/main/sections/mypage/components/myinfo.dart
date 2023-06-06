import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/providers/partner_provider.dart';
import 'package:provider/provider.dart';

class MypageMyinfo extends StatelessWidget {
  const MypageMyinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PartnerProvider>(builder: (_, provider, __) {
      return Container(
        color: greyVariant5,
        padding: const EdgeInsets.symmetric(
          horizontal: padding16,
          vertical: padding24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    provider.partner?.identifier ?? '알수없음',
                    style: titleLarge.copyWith(color: textColor),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: borderColor),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: padding10,
                        vertical: 6,
                      ),
                      child: Text(
                        '내 정보 관리',
                        style: label.copyWith(color: textColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: padding32),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: padding16,
                vertical: padding32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(58, 69, 82, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.person, color: Colors.white, size: 30),
                  const SizedBox(width: padding10),
                  Text(
                    '손님관리',
                    style: titleLarge.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}