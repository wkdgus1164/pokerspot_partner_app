import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/selection_dialog/selection_dialog_utils.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class MypageAdminView extends StatelessWidget {
  const MypageAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('내 정보 관리')),
      body: Consumer<AuthProvider>(
        builder: (_, provider, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text(
                  '아이디',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: customColorScheme.onSurface1,
                      ),
                ),
                trailing: Text(
                  provider.partner?.identifier ?? '',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: lightColorScheme.outline,
              ),
              ListTile(
                title: Text(
                  '휴대폰 번호',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: customColorScheme.onSurface1,
                      ),
                ),
                trailing: Text(
                  provider.partner?.phoneNumber ?? '',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: lightColorScheme.outline,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(padding16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        provider.logout();
                        context.pushReplacement(CustomRouter.login.path);
                      },
                      child: const Text('비밀번호 변경하기'),
                    ),
                    const SizedBox(height: padding16),
                    OutlinedButton(
                      onPressed: () {
                        provider.logout();
                        context.pushReplacement(CustomRouter.login.path);
                      },
                      child: const Text('로그아웃'),
                    ),
                    const SizedBox(height: padding16),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          showSelectionDialog(
                              context: context,
                              title: '회원 탈퇴',
                              content:
                                  '회원 탈퇴하시겠습니까?\n회원 관련 정보는 모두 삭제되며, 복구가 불가능합니다.',
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
                                      message: '회원탈퇴를 실패했습니다.',
                                    );
                                  }
                                }
                              });
                        },
                        child: Text(
                          '회원 탈퇴 신청하기',
                          style: TextStyle(color: customColorScheme.onSurface4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
