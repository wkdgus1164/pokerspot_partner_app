import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store_business_info_edit/image_picker/image_picker_action_sheet.dart';
import 'package:pokerspot_partner_app/apps/ui/store_business_info_edit/image_picker/image_picker_bottom_sheet.dart';
import 'package:pokerspot_partner_app/apps/ui/store_business_info_edit/image_picker/providers/image_picker_service.dart';

class StoreBusinessInfoEditImagePickerView extends StatefulHookConsumerWidget {
  const StoreBusinessInfoEditImagePickerView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreBusinessInfoEditImagePickerViewState();
}

class _StoreBusinessInfoEditImagePickerViewState
    extends ConsumerState<StoreBusinessInfoEditImagePickerView> {
  @override
  Widget build(BuildContext context) {
    final image = ref.watch(imagePickerServiceProvider);

    Logger().i('image: $image');

    if (image.image == null) {
      return GestureDetector(
        onTap: () {
          if (Platform.isAndroid) {
            showModalBottomSheet(
              context: context,
              builder: (_) {
                return StoreImageSelectionModalBottomSheet(
                  onGalleryClick: () {
                    ref.read(imagePickerServiceProvider.notifier).pickImage();
                    context.pop();
                  },
                  onCameraClick: () {
                    ref.read(imagePickerServiceProvider.notifier).shotCamera();
                    context.pop();
                  },
                );
              },
            );
          }

          if (Platform.isIOS) {
            showCupertinoModalPopup(
              context: context,
              builder: (_) {
                return StoreImageSelectionCupertinoActionSheet(
                  handleGalleryClick: () {
                    ref.read(imagePickerServiceProvider.notifier).pickImage();
                    context.pop();
                  },
                  handleCameraClick: () {
                    ref.read(imagePickerServiceProvider.notifier).shotCamera();
                    context.pop();
                  },
                );
              },
            );
          }
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
