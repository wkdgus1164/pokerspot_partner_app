import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class MyAccountVac extends StatelessWidget {
  const MyAccountVac({
    super.key,
    required this.name,
    required this.birth,
    required this.gender,
    required this.handleButtonClick,
  });

  final String name;
  final String birth;
  final String gender;
  final Function() handleButtonClick;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '개인 정보',
              style: textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: colorGrey20,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                border: Border.all(color: colorGrey90),
              ),
              child: Column(
                children: [
                  _buildRow(title: '실명', value: name),
                  const Divider(),
                  _buildRow(title: '생년월일', value: birth),
                  const Divider(),
                  _buildRow(title: '성별', value: gender),
                ],
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {},
              child: const Text('다시 인증하기'),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildRow({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            title,
            style: textTheme.labelLarge!.copyWith(
              color: colorGrey60,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: textTheme.bodyMedium!.copyWith(
              color: colorGrey20,
            ),
          ),
        ],
      ),
    );
  }
}
