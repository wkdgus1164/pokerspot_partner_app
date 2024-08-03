import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz_edit/providers/edit_page_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

part 'image_picker_service.freezed.dart';
part 'image_picker_service.g.dart';

@freezed
class ImagePickerModel with _$ImagePickerModel {
  factory ImagePickerModel({
    required File? image,
  }) = _ImagePickerModel;
}

@riverpod
class ImagePickerService extends _$ImagePickerService {
  @override
  ImagePickerModel build() {
    return ImagePickerModel(image: null);
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      state = state.copyWith(image: File(pickedFile.path));
      ref.read(businessInfoEditDataProvider.notifier).validate();
    }
  }

  Future<void> shotCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      state = state.copyWith(image: File(pickedFile.path));
      ref.read(businessInfoEditDataProvider.notifier).validate();
    }
  }
}
