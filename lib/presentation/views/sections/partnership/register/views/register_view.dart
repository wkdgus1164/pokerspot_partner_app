import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/register/views/components/selection.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/register/views/components/warning.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/http_error_dialog/http_error_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

import '../../success/views/success_view.dart';

class PartnerRegisterView extends StatelessWidget {
  const PartnerRegisterView({
    super.key,
    required this.storeId,
  });

  final String storeId;
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
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () async {
                  final provider =
                      StoreProvider(locator(), locator(), locator(), storeId);
                  await provider.applyAffiliate().then((value) {
                    if (value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PartnershipSuccessView(),
                        ),
                      );
                    } else {
                      showMyHttpErrorDialog(
                          context: context,
                          e: '알수없는 에러 발생하였습니다.',
                          onConfirm: () {});
                    }
                  });
                },
                child: const Text('제휴 신청하기'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
