// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ment_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreMentFormModel _$StoreMentFormModelFromJson(Map<String, dynamic> json) {
  return _StoreMentFormModel.fromJson(json);
}

/// @nodoc
mixin _$StoreMentFormModel {
  String get ment => throw _privateConstructorUsedError;

  /// Serializes this StoreMentFormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreMentFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreMentFormModelCopyWith<StoreMentFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMentFormModelCopyWith<$Res> {
  factory $StoreMentFormModelCopyWith(
          StoreMentFormModel value, $Res Function(StoreMentFormModel) then) =
      _$StoreMentFormModelCopyWithImpl<$Res, StoreMentFormModel>;
  @useResult
  $Res call({String ment});
}

/// @nodoc
class _$StoreMentFormModelCopyWithImpl<$Res, $Val extends StoreMentFormModel>
    implements $StoreMentFormModelCopyWith<$Res> {
  _$StoreMentFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreMentFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ment = null,
  }) {
    return _then(_value.copyWith(
      ment: null == ment
          ? _value.ment
          : ment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreMentFormModelImplCopyWith<$Res>
    implements $StoreMentFormModelCopyWith<$Res> {
  factory _$$StoreMentFormModelImplCopyWith(_$StoreMentFormModelImpl value,
          $Res Function(_$StoreMentFormModelImpl) then) =
      __$$StoreMentFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ment});
}

/// @nodoc
class __$$StoreMentFormModelImplCopyWithImpl<$Res>
    extends _$StoreMentFormModelCopyWithImpl<$Res, _$StoreMentFormModelImpl>
    implements _$$StoreMentFormModelImplCopyWith<$Res> {
  __$$StoreMentFormModelImplCopyWithImpl(_$StoreMentFormModelImpl _value,
      $Res Function(_$StoreMentFormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreMentFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ment = null,
  }) {
    return _then(_$StoreMentFormModelImpl(
      ment: null == ment
          ? _value.ment
          : ment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreMentFormModelImpl implements _StoreMentFormModel {
  _$StoreMentFormModelImpl({required this.ment});

  factory _$StoreMentFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreMentFormModelImplFromJson(json);

  @override
  final String ment;

  @override
  String toString() {
    return 'StoreMentFormModel(ment: $ment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreMentFormModelImpl &&
            (identical(other.ment, ment) || other.ment == ment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ment);

  /// Create a copy of StoreMentFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreMentFormModelImplCopyWith<_$StoreMentFormModelImpl> get copyWith =>
      __$$StoreMentFormModelImplCopyWithImpl<_$StoreMentFormModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreMentFormModelImplToJson(
      this,
    );
  }
}

abstract class _StoreMentFormModel implements StoreMentFormModel {
  factory _StoreMentFormModel({required final String ment}) =
      _$StoreMentFormModelImpl;

  factory _StoreMentFormModel.fromJson(Map<String, dynamic> json) =
      _$StoreMentFormModelImpl.fromJson;

  @override
  String get ment;

  /// Create a copy of StoreMentFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreMentFormModelImplCopyWith<_$StoreMentFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
