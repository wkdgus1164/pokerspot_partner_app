import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';

class StoreImagesEditPage extends StatefulHookConsumerWidget {
  const StoreImagesEditPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreImageEditPageState();
}

class _StoreImageEditPageState extends ConsumerState<StoreImagesEditPage> {
  final images = [
    'https://placehold.it/160x90',
    'https://placehold.it/160x90',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이미지 수정')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Caption(
              caption: '업로드하시는 이미지는 자동으로 중간을 기준으로 상하좌우가 16:9 비율에 맞게 잘려서 저장돼요',
            );
          }

          return Stack(
            alignment: Alignment.topRight,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    imageUrl: images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(Icons.close_rounded),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: images.length,
      ),
    );
  }
}
