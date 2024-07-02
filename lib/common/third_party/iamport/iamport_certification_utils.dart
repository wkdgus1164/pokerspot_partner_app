import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/third_party/iamport/iamport_certification_view.dart';

Future certificateIamport(
  BuildContext context, {
  required Function(String impUid) onSuccess,
  required VoidCallback onFailure,
}) async {
  handleSuccess(String impUid) {
    context.pop();

    onSuccess(impUid);
  }

  handleFailure() {
    context.pop();

    onFailure();
  }

  return Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => IamPortCertificationView(
        iamportUserCode: "imp62430270",
        onSuccess: handleSuccess,
        onFailure: handleFailure,
      ),
    ),
  );
}
