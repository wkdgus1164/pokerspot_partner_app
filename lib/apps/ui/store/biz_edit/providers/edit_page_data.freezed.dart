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
mixin _$BizEditModel {
  File get fileName => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  /// Create a copy of BizEditModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BizEditModelCopyWith<BizEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BizEditModelCopyWith<$Res> {
  factory $BizEditModelCopyWith(
          BizEditModel value, $Res Function(BizEditModel) then) =
      _$BizEditModelCopyWithImpl<$Res, BizEditModel>;
  @useResult
  $Res call({File fileName, bool isValid});
}

/// @nodoc
class _$BizEditModelCopyWithImpl<$Res, $Val extends BizEditModel>
    implements $BizEditModelCopyWith<$Res> {
  _$BizEditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BizEditModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$BizEditModelImplCopyWith<$Res>
    implements $BizEditModelCopyWith<$Res> {
  factory _$$BizEditModelImplCopyWith(
          _$BizEditModelImpl value, $Res Function(_$BizEditModelImpl) then) =
      __$$BizEditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File fileName, bool isValid});
}

/// @nodoc
class __$$BizEditModelImplCopyWithImpl<$Res>
    extends _$BizEditModelCopyWithImpl<$Res, _$BizEditModelImpl>
    implements _$$BizEditModelImplCopyWith<$Res> {
  __$$BizEditModelImplCopyWithImpl(
      _$BizEditModelImpl _value, $Res Function(_$BizEditModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BizEditModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? isValid = null,
  }) {
    return _then(_$BizEditModelImpl(
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

class _$BizEditModelImpl implements _BizEditModel {
  _$BizEditModelImpl({required this.fileName, required this.isValid});

  @override
  final File fileName;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'BizEditModel(fileName: $fileName, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BizEditModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, isValid);

  /// Create a copy of BizEditModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BizEditModelImplCopyWith<_$BizEditModelImpl> get copyWith =>
      __$$BizEditModelImplCopyWithImpl<_$BizEditModelImpl>(this, _$identity);
}

abstract class _BizEditModel implements BizEditModel {
  factory _BizEditModel(
      {required final File fileName,
      required final bool isValid}) = _$BizEditModelImpl;

  @override
  File get fileName;
  @override
  bool get isValid;

  /// Create a copy of BizEditModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BizEditModelImplCopyWith<_$BizEditModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
