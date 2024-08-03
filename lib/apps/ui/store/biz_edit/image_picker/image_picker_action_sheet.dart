import 'package:flutter/cupertino.dart';

class StoreImageSelectionCupertinoActionSheet extends StatelessWidget {
  const StoreImageSelectionCupertinoActionSheet({
    super.key,
    required this.handleGalleryClick,
    required this.handleCameraClick,
  });

  final Function() handleGalleryClick;
  final Function() handleCameraClick;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: handleGalleryClick,
          child: const Text('갤러리에서 선택'),
        ),
        CupertinoActionSheetAction(
          onPressed: handleGalleryClick,
          child: const Text('카메라로 촬영'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('취소'),
      ),
    );
  }
}
