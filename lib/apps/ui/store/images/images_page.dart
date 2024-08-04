import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/common/placeholder/empty_with_button.dart';

class StoreImagesPage extends StatefulHookConsumerWidget {
  const StoreImagesPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreImagesPageState();
}

class _StoreImagesPageState extends ConsumerState<StoreImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 관리'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CustomRouter.storeImagesEdit.path);
            },
            icon: const Icon(Icons.edit_rounded),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.topLeft,
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
                    imageUrl: 'https://placehold.it/160x90',
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
                child: Text(
                  (index + 1).toString(),
                  style: textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorGrey20,
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: 10,
      ),
      // _buildPlaceholder(),
    );
  }

  Center _buildPlaceholder() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: EmptyWithButton(
          icon: Icons.info_rounded,
          message: '아직 매장 이미지가 없어요\n\n내 매장을 잘 표현하는 이미지를 올려서\n새로운 손님을 유치할 수 있어요',
          buttonText: '이미지 등록하기',
          handleButtonClick: () {},
        ),
      ),
    );
  }
}
