// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_time_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreOperationTimeModel _$StoreOperationTimeModelFromJson(
    Map<String, dynamic> json) {
  return _StoreOperationTimeModel.fromJson(json);
}

/// @nodoc
mixin _$StoreOperationTimeModel {
  String get openTime => throw _privateConstructorUsedError;
  String get openMinute => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  String get closeMinute => throw _privateConstructorUsedError;

  /// Serializes this StoreOperationTimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreOperationTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreOperationTimeModelCopyWith<StoreOperationTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreOperationTimeModelCopyWith<$Res> {
  factory $StoreOperationTimeModelCopyWith(StoreOperationTimeModel value,
          $Res Function(StoreOperationTimeModel) then) =
      _$StoreOperationTimeModelCopyWithImpl<$Res, StoreOperationTimeModel>;
  @useResult
  $Res call(
      {String openTime,
      String openMinute,
      String closeTime,
      String closeMinute});
}

/// @nodoc
class _$StoreOperationTimeModelCopyWithImpl<$Res,
        $Val extends StoreOperationTimeModel>
    implements $StoreOperationTimeModelCopyWith<$Res> {
  _$StoreOperationTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreOperationTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openTime = null,
    Object? openMinute = null,
    Object? closeTime = null,
    Object? closeMinute = null,
  }) {
    return _then(_value.copyWith(
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      openMinute: null == openMinute
          ? _value.openMinute
          : openMinute // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeMinute: null == closeMinute
          ? _value.closeMinute
          : closeMinute // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreOperationTimeModelImplCopyWith<$Res>
    implements $StoreOperationTimeModelCopyWith<$Res> {
  factory _$$StoreOperationTimeModelImplCopyWith(
          _$StoreOperationTimeModelImpl value,
          $Res Function(_$StoreOperationTimeModelImpl) then) =
      __$$StoreOperationTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String openTime,
      String openMinute,
      String closeTime,
      String closeMinute});
}

/// @nodoc
class __$$StoreOperationTimeModelImplCopyWithImpl<$Res>
    extends _$StoreOperationTimeModelCopyWithImpl<$Res,
        _$StoreOperationTimeModelImpl>
    implements _$$StoreOperationTimeModelImplCopyWith<$Res> {
  __$$StoreOperationTimeModelImplCopyWithImpl(
      _$StoreOperationTimeModelImpl _value,
      $Res Function(_$StoreOperationTimeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreOperationTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openTime = null,
    Object? openMinute = null,
    Object? closeTime = null,
    Object? closeMinute = null,
  }) {
    return _then(_$StoreOperationTimeModelImpl(
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      openMinute: null == openMinute
          ? _value.openMinute
          : openMinute // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeMinute: null == closeMinute
          ? _value.closeMinute
          : closeMinute // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreOperationTimeModelImpl implements _StoreOperationTimeModel {
  _$StoreOperationTimeModelImpl(
      {required this.openTime,
      required this.openMinute,
      required this.closeTime,
      required this.closeMinute});

  factory _$StoreOperationTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreOperationTimeModelImplFromJson(json);

  @override
  final String openTime;
  @override
  final String openMinute;
  @override
  final String closeTime;
  @override
  final String closeMinute;

  @override
  String toString() {
    return 'StoreOperationTimeModel(openTime: $openTime, openMinute: $openMinute, closeTime: $closeTime, closeMinute: $closeMinute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreOperationTimeModelImpl &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.openMinute, openMinute) ||
                other.openMinute == openMinute) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.closeMinute, closeMinute) ||
                other.closeMinute == closeMinute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, openTime, openMinute, closeTime, closeMinute);

  /// Create a copy of StoreOperationTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreOperationTimeModelImplCopyWith<_$StoreOperationTimeModelImpl>
      get copyWith => __$$StoreOperationTimeModelImplCopyWithImpl<
          _$StoreOperationTimeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreOperationTimeModelImplToJson(
      this,
    );
  }
}

abstract class _StoreOperationTimeModel implements StoreOperationTimeModel {
  factory _StoreOperationTimeModel(
      {required final String openTime,
      required final String openMinute,
      required final String closeTime,
      required final String closeMinute}) = _$StoreOperationTimeModelImpl;

  factory _StoreOperationTimeModel.fromJson(Map<String, dynamic> json) =
      _$StoreOperationTimeModelImpl.fromJson;

  @override
  String get openTime;
  @override
  String get openMinute;
  @override
  String get closeTime;
  @override
  String get closeMinute;

  /// Create a copy of StoreOperationTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreOperationTimeModelImplCopyWith<_$StoreOperationTimeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
