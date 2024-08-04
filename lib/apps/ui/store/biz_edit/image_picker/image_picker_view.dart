import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz_edit/image_picker/providers/image_picker_service.dart';
import 'package:pokerspot_partner_app/common/sheet/sheet_data.dart';
import 'package:pokerspot_partner_app/common/sheet/sheet_utils.dart';

class StoreBizEditImagePickerView extends StatefulHookConsumerWidget {
  const StoreBizEditImagePickerView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreBizEditImagePickerViewState();
}

class _StoreBizEditImagePickerViewState
    extends ConsumerState<StoreBizEditImagePickerView> {
  @override
  Widget build(BuildContext context) {
    final image = ref.watch(imagePickerServiceProvider);

    Logger().i('image: $image');

    if (image.image == null) {
      return GestureDetector(
        onTap: () {
          context.showCustomBottomSheet(
            items: [
              CustomSheetModel(
                icon: const Icon(Icons.browse_gallery_rounded),
                title: '갤러리에서 선택',
                subtitle: '갤러리에서 사진을 선택할 수 있어요.',
                onTap: () {
                  ref.read(imagePickerServiceProvider.notifier).pickImage();
                  context.pop();
                },
              ),
              CustomSheetModel(
                icon: const Icon(Icons.camera_alt_rounded),
                title: '카메라로 촬영',
                subtitle: '사진을 찍어서 업로드할 수 있어요.',
                onTap: () {
                  ref.read(imagePickerServiceProvider.notifier).shotCamera();
                  context.pop();
                },
              ),
            ],
          );
        },
        child: AspectRatio(
          aspectRatio: 210 / 297,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              color: colorGrey95,
            ),
            clipBehavior: Clip.antiAlias,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.document_scanner_outlined,
                    color: colorGrey80,
                    size: 100,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    '여기를 눌러주세요',
                    style: textTheme.titleLarge!.copyWith(
                      color: colorGrey80,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.file(image.image!, fit: BoxFit.cover),
    );
  }
}
