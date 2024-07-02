import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_intro/signup_intro_vac.dart';
import 'package:pokerspot_partner_app/common/dialog/dialog_utils.dart';
import 'package:pokerspot_partner_app/common/third_party/iamport/iamport_certification_utils.dart';

class SignupIntroPage extends StatefulHookConsumerWidget {
  const SignupIntroPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignupIntroPageState();
}

class _SignupIntroPageState extends ConsumerState<SignupIntroPage> {
  @override
  Widget build(BuildContext context) {
    return SignupIntroVac(
      handleVerifyClick: _handleVerifyClick,
    );
  }

  void _handleVerifyClick() {
    certificateIamport(
      context,
      onSuccess: (importUid) {
        Logger().d('importUid: $importUid');
        context.showCustomDialog(
          title: '본인인증 완료!',
          content: '회원가입을 계속 진행해주세요.',
          confirmText: '확인',
          onConfirm: () {
            context.push(CustomRouter.signupInfo.path);
          },
        );
      },
      onFailure: () {
        context.showCustomDialog(
          title: '본인인증 실패!',
          content: 'ㅠㅠㅠ',
          confirmText: '확인',
          onConfirm: () {
            context.push(CustomRouter.signupInfo.path);
          },
        );
      },
    );
  }
}
