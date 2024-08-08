import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';

class StoreMentPage extends StatefulHookConsumerWidget {
  const StoreMentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoreMentPageState();
}

class _StoreMentPageState extends ConsumerState<StoreMentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('매장 소개 관리'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Caption(caption: '문구 수정 후에는 반드시 아래 적용하기 버튼을 눌러 주세요.'),
            const SizedBox(height: 16),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: colorGrey80,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: colorGrey80,
                    ),
                  ),
                  hintText: '매장 소개 문구를 입력해주세요',
                ),
                maxLines: null,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: FilledButton(
                onPressed: () {},
                child: const Text('적용하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
