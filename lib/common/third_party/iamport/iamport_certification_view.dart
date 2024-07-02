import 'package:flutter/material.dart';

import 'package:iamport_flutter/iamport_certification.dart';
import 'package:iamport_flutter/model/certification_data.dart';

class IamPortCertificationView extends StatelessWidget {
  final String iamportUserCode;
  final Function(String impUid) onSuccess;
  final VoidCallback onFailure;

  const IamPortCertificationView({
    super.key,
    required this.iamportUserCode,
    required this.onSuccess,
    required this.onFailure,
  });

  handleCertificationResponse(Map<String, String> result) {
    final impUid = result['imp_uid'];
    final isSuccess = result['success'] == "true";

    if (isSuccess) return onSuccess(impUid ?? "");

    onFailure();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('본인 인증하기')),
      body: IamportCertification(
        /* 웹뷰 로딩 컴포넌트 */
        initialChild: _buildLoading(),

        /* [필수입력] 가맹점 식별코드 */
        userCode: iamportUserCode,

        /* [필수입력] 본인인증 데이터 */
        data: CertificationData(mRedirectUrl: "https://www.google.com"),

        /* [필수입력] 콜백 함수 */
        callback: handleCertificationResponse,
      ),
    );
  }

  _buildLoading() {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
