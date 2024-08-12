import 'package:flutter/material.dart';

class MyMainVac extends StatelessWidget {
  const MyMainVac({
    super.key,
    required this.handleAccountClick,
    required this.handlePasswordChangeClick,
    required this.handleSignOutClick,
    required this.handleMemberBreakClick,
  });

  final Function() handleAccountClick;
  final Function() handlePasswordChangeClick;
  final Function() handleSignOutClick;
  final Function() handleMemberBreakClick;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('개인 정보 관리'),
            subtitle: const Text('통신사에 인증된 실명 정보를 재인증해서 수정할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleAccountClick,
          ),
          ListTile(
            leading: const Icon(Icons.lock_rounded),
            title: const Text('비밀번호 변경'),
            subtitle: const Text('현재 사용하는 비밀번호를 다른 비밀번호로 변경할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handlePasswordChangeClick,
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text('로그아웃'),
            subtitle: const Text('다른 계정으로 로그인할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleSignOutClick,
          ),
          ListTile(
            leading: const Icon(Icons.meeting_room_rounded),
            title: const Text('회원탈퇴'),
            subtitle: const Text('회원 탈퇴하시면 포커스팟 앱에 표시되는 모든 매장 정보가 삭제돼요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleMemberBreakClick,
          ),
        ],
      ),
    );
  }
}
