import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz_edit/image_picker/image_picker_view.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz_edit/providers/edit_page_data.dart';

class StoreBizEditPage extends StatefulHookConsumerWidget {
  const StoreBizEditPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreBizEditPageState();
}

class _StoreBizEditPageState extends ConsumerState<StoreBizEditPage> {
  @override
  Widget build(BuildContext context) {
    final isValid = ref.watch(businessInfoEditDataProvider).isValid;

    final handleValidClick = isValid ? () {} : null;

    return Scaffold(
      appBar: AppBar(title: const Text('사업자 정보 수정')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '변경된 사업자등록증을\n제출해주세요',
                    style: textTheme.headlineSmall!.copyWith(
                      color: colorGrey20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '아래 공간을 눌러서 변경된 사업자등록증을 제출해주시면\n관리자가 검토하여 최신 정보로 반영해드려요',
                    style: textTheme.labelLarge!.copyWith(
                      color: colorGrey60,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const StoreBusinessInfoEditImagePickerView(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: handleValidClick,
              child: const Text('변경 신청하기'),
            ),
          ),
        ],
      ),
    );
  }
}
