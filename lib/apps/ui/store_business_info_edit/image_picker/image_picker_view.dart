import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
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

    if (image.image == null) {
      return GestureDetector(
        onTap: () {
          ref.read(imagePickerServiceProvider.notifier).pickImage();
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

    return Image.file(image.image!, fit: BoxFit.cover);
  }
}
