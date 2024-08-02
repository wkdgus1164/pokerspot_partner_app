import 'package:flutter/material.dart';

class StoreImageSelectionModalBottomSheet extends StatelessWidget {
  const StoreImageSelectionModalBottomSheet({
    super.key,
    required this.onGalleryClick,
    required this.onCameraClick,
  });

  final Function() onGalleryClick;
  final Function() onCameraClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.browse_gallery_rounded),
          title: const Text('갤러리에서 선택'),
          subtitle: const Text('갤러리에서 사진을 선택할 수 있어요.'),
          onTap: onGalleryClick,
        ),
        ListTile(
          leading: const Icon(Icons.camera_alt_rounded),
          title: const Text('카메라로 촬영'),
          subtitle: const Text('사진을 찍어서 업로드할 수 있어요.'),
          onTap: onCameraClick,
        ),
      ],
    );
  }
}
