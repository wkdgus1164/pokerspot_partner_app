import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StoreImagesEditListView extends StatefulHookConsumerWidget {
  const StoreImagesEditListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreImagesEditListViewState();
}

class _StoreImagesEditListViewState
    extends ConsumerState<StoreImagesEditListView> {
  final List<String> images = [
    'https://placehold.it/160x90',
    'https://placehold.it/160x90',
    'https://placehold.it/160x90',
    'https://placehold.it/160x90',
    'https://placehold.it/160x90',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
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
    );
  }
}
