import 'package:flutter/widgets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';
import 'package:provider/provider.dart';

import '../../../../../../locator.dart';
import '../../../../../providers/store_provider.dart';

class ShopEditEtcView extends StatelessWidget {
  const ShopEditEtcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StoreProvider>(builder: (_, provider, __) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: padding32,
          children: [
            CustomTextFieldSet(
              inputLabel: '사업자등록번호',
              inputHintText: provider.store!.bizNumber,
              captionText: '사업자 정보가 변경될 경우 제휴센터로 문의하세요.',
              enabled: false,
            ),
            CustomTextFieldSet(
              inputLabel: '대표자명',
              inputHintText: provider.store!.ownerName,
              captionText: '대표자 정보가 변경될 경우 제휴센터로 문의하세요.',
              enabled: false,
            ),
            CustomTextFieldSet(
              inputLabel: '휴대폰번호',
              inputHintText: locator<AuthProvider>().partner!.phoneNumber,
              captionText: '휴대폰 번호는 내정보 → 내정보 관리 화면에서 변경할 수 있어요.',
              enabled: false,
            ),
          ],
        ),
      );
    });
  }
}
