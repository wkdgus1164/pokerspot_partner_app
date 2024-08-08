import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/images_edit/images_list_view.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';

class StoreImagesEditPage extends StatefulHookConsumerWidget {
  const StoreImagesEditPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreImageEditPageState();
}

class _StoreImageEditPageState extends ConsumerState<StoreImagesEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이미지 수정')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Caption(
                    title: '이미지 크기 안내',
                    caption:
                        '업로드하시는 이미지는 자동으로 중간을 기준으로 상하좌우가 16:9 비율에 맞게 잘려서 저장돼요',
                  ),
                  const SizedBox(height: 16),
                  const StoreImagesEditListView(),
                  const SizedBox(height: 16),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: colorGrey95,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add_rounded,
                          size: 100,
                          color: colorGrey80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () {},
              child: const Text('변경하기'),
            ),
          ),
        ],
      ),
    );
  }
}
