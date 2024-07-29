// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagePickerModel {
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagePickerModelCopyWith<ImagePickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerModelCopyWith<$Res> {
  factory $ImagePickerModelCopyWith(
          ImagePickerModel value, $Res Function(ImagePickerModel) then) =
      _$ImagePickerModelCopyWithImpl<$Res, ImagePickerModel>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class _$ImagePickerModelCopyWithImpl<$Res, $Val extends ImagePickerModel>
    implements $ImagePickerModelCopyWith<$Res> {
  _$ImagePickerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePickerModelImplCopyWith<$Res>
    implements $ImagePickerModelCopyWith<$Res> {
  factory _$$ImagePickerModelImplCopyWith(_$ImagePickerModelImpl value,
          $Res Function(_$ImagePickerModelImpl) then) =
      __$$ImagePickerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$ImagePickerModelImplCopyWithImpl<$Res>
    extends _$ImagePickerModelCopyWithImpl<$Res, _$ImagePickerModelImpl>
    implements _$$ImagePickerModelImplCopyWith<$Res> {
  __$$ImagePickerModelImplCopyWithImpl(_$ImagePickerModelImpl _value,
      $Res Function(_$ImagePickerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$ImagePickerModelImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ImagePickerModelImpl implements _ImagePickerModel {
  _$ImagePickerModelImpl({required this.image});

  @override
  final File? image;

  @override
  String toString() {
    return 'ImagePickerModel(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerModelImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickerModelImplCopyWith<_$ImagePickerModelImpl> get copyWith =>
      __$$ImagePickerModelImplCopyWithImpl<_$ImagePickerModelImpl>(
          this, _$identity);
}

abstract class _ImagePickerModel implements ImagePickerModel {
  factory _ImagePickerModel({required final File? image}) =
      _$ImagePickerModelImpl;

  @override
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$ImagePickerModelImplCopyWith<_$ImagePickerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
