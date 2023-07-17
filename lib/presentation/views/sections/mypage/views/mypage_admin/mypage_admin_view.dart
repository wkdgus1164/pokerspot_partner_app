import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/selection_dialog/selection_dialog_utils.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/mypage_admin/components/information_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:provider/provider.dart';

class MypageAdminView extends StatelessWidget {
  const MypageAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('내 정보 관리')),
      body: SafeArea(
        child: Container(
          color: lightColorScheme.surface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<AuthProvider>(builder: (_, provider, __) {
                return Padding(
                  padding: const EdgeInsets.all(padding16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InformationItem(
                        title: '아이디',
                        value: provider.partner?.identifier ?? '',
                      ),
                      InformationItem(
                        title: '휴대폰 번호',
                        value: provider.partner?.phoneNumber ?? '',
                      ),
                      const SizedBox(height: padding48),
                      CustomOutlinedButton(
                        onPressed: () {
                          provider.logout();
                          context.pushReplacement(CustomRouter.login.path);
                        },
                        text: '로그아웃',
                      ),
                      const SizedBox(height: padding16),
                      CustomOutlinedButton(
                        onPressed: () {
                          showSelectionDialog(
                              context: context,
                              title: '회원탈퇴를 하시겠습니까?',
                              onConfirm: () async {
                                final success = await provider.delete();
                                if (context.mounted) {
                                  if (success) {
                                    provider.logout();
                                    context.pushReplacement(
                                      CustomRouter.login.path,
                                    );
                                  } else {
                                    showToast(
                                        context: context,
                                        message: '회원탈퇴를 실패했습니다.');
                                  }
                                }
                              });
                        },
                        text: '회원탈퇴',
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
