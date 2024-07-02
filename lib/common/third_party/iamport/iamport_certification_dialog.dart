import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/common/third_party/iamport/iamport_certification_view.dart';

class IamPortCertificationDialog extends HookConsumerWidget {
  final String iamportUserCode;
  final Function(String impUid) onSuccess;
  final VoidCallback onFailure;

  const IamPortCertificationDialog({
    super.key,
    required this.iamportUserCode,
    required this.onSuccess,
    required this.onFailure,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      insetPadding: const EdgeInsets.all(0),
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: IamPortCertificationView(
            iamportUserCode: iamportUserCode,
            onSuccess: onSuccess,
            onFailure: onFailure,
          ),
        ),
      ],
    );
  }
}
