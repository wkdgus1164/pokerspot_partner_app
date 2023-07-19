import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class NotiSettingView extends StatelessWidget {
  const NotiSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('알림 설정')),
      body: Column(
        children: [
          SwitchListTile(
            value: true,
            onChanged: (v) {},
            title: const Text('예약 푸시 알림'),
          ),
          Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
          SwitchListTile(
            value: true,
            onChanged: (v) {},
            title: const Text('이메일 알림'),
          ),
          Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
          SwitchListTile(
            value: true,
            onChanged: (v) {},
            title: const Text('다른 기기에서 로그인 알림'),
          ),
          Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
          SwitchListTile(
            value: true,
            onChanged: (v) {},
            title: const Text('공지사항 알림'),
          ),
          Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
          SwitchListTile(
            value: true,
            onChanged: (v) {},
            title: const Text('제휴 기간 종료 예정 알림'),
          ),
          Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
        ],
      ),
    );
  }
}
