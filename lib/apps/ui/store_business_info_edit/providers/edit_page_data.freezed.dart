// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusinessInfoEditModel {
  File get fileName => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessInfoEditModelCopyWith<BusinessInfoEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessInfoEditModelCopyWith<$Res> {
  factory $BusinessInfoEditModelCopyWith(BusinessInfoEditModel value,
          $Res Function(BusinessInfoEditModel) then) =
      _$BusinessInfoEditModelCopyWithImpl<$Res, BusinessInfoEditModel>;
  @useResult
  $Res call({File fileName, bool isValid});
}

/// @nodoc
class _$BusinessInfoEditModelCopyWithImpl<$Res,
        $Val extends BusinessInfoEditModel>
    implements $BusinessInfoEditModelCopyWith<$Res> {
  _$BusinessInfoEditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as File,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessInfoEditModelImplCopyWith<$Res>
    implements $BusinessInfoEditModelCopyWith<$Res> {
  factory _$$BusinessInfoEditModelImplCopyWith(
          _$BusinessInfoEditModelImpl value,
          $Res Function(_$BusinessInfoEditModelImpl) then) =
      __$$BusinessInfoEditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File fileName, bool isValid});
}

/// @nodoc
class __$$BusinessInfoEditModelImplCopyWithImpl<$Res>
    extends _$BusinessInfoEditModelCopyWithImpl<$Res,
        _$BusinessInfoEditModelImpl>
    implements _$$BusinessInfoEditModelImplCopyWith<$Res> {
  __$$BusinessInfoEditModelImplCopyWithImpl(_$BusinessInfoEditModelImpl _value,
      $Res Function(_$BusinessInfoEditModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? isValid = null,
  }) {
    return _then(_$BusinessInfoEditModelImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as File,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BusinessInfoEditModelImpl implements _BusinessInfoEditModel {
  _$BusinessInfoEditModelImpl({required this.fileName, required this.isValid});

  @override
  final File fileName;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'BusinessInfoEditModel(fileName: $fileName, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessInfoEditModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessInfoEditModelImplCopyWith<_$BusinessInfoEditModelImpl>
      get copyWith => __$$BusinessInfoEditModelImplCopyWithImpl<
          _$BusinessInfoEditModelImpl>(this, _$identity);
}

abstract class _BusinessInfoEditModel implements BusinessInfoEditModel {
  factory _BusinessInfoEditModel(
      {required final File fileName,
      required final bool isValid}) = _$BusinessInfoEditModelImpl;

  @override
  File get fileName;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$BusinessInfoEditModelImplCopyWith<_$BusinessInfoEditModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
