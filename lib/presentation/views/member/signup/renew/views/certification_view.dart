import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iamport_flutter/iamport_certification.dart';
import 'package:iamport_flutter/model/certification_data.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class CertificationView extends StatelessWidget {
  const CertificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return IamportCertification(
      appBar: const CustomAppBar(text: '본인인증'),
      initialChild: const Center(child: CircularProgressIndicator()),
      userCode: 'imp05614040',
      data: CertificationData(mRedirectUrl: 'https://test.com/'),
      callback: (Map<String, String> result) => context.pop(result),
    );
  }
}
