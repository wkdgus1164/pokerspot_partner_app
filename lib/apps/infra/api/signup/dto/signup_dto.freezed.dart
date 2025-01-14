// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupResponseDataDto _$SignupResponseDataDtoFromJson(
    Map<String, dynamic> json) {
  return _SignupResponseDataDto.fromJson(json);
}

/// @nodoc
mixin _$SignupResponseDataDto {
  String get identifier => throw _privateConstructorUsedError;

  /// Serializes this SignupResponseDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupResponseDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupResponseDataDtoCopyWith<SignupResponseDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseDataDtoCopyWith<$Res> {
  factory $SignupResponseDataDtoCopyWith(SignupResponseDataDto value,
          $Res Function(SignupResponseDataDto) then) =
      _$SignupResponseDataDtoCopyWithImpl<$Res, SignupResponseDataDto>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class _$SignupResponseDataDtoCopyWithImpl<$Res,
        $Val extends SignupResponseDataDto>
    implements $SignupResponseDataDtoCopyWith<$Res> {
  _$SignupResponseDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupResponseDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupResponseDataDtoImplCopyWith<$Res>
    implements $SignupResponseDataDtoCopyWith<$Res> {
  factory _$$SignupResponseDataDtoImplCopyWith(
          _$SignupResponseDataDtoImpl value,
          $Res Function(_$SignupResponseDataDtoImpl) then) =
      __$$SignupResponseDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$SignupResponseDataDtoImplCopyWithImpl<$Res>
    extends _$SignupResponseDataDtoCopyWithImpl<$Res,
        _$SignupResponseDataDtoImpl>
    implements _$$SignupResponseDataDtoImplCopyWith<$Res> {
  __$$SignupResponseDataDtoImplCopyWithImpl(_$SignupResponseDataDtoImpl _value,
      $Res Function(_$SignupResponseDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupResponseDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$SignupResponseDataDtoImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupResponseDataDtoImpl implements _SignupResponseDataDto {
  const _$SignupResponseDataDtoImpl({required this.identifier});

  factory _$SignupResponseDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupResponseDataDtoImplFromJson(json);

  @override
  final String identifier;

  @override
  String toString() {
    return 'SignupResponseDataDto(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupResponseDataDtoImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  /// Create a copy of SignupResponseDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupResponseDataDtoImplCopyWith<_$SignupResponseDataDtoImpl>
      get copyWith => __$$SignupResponseDataDtoImplCopyWithImpl<
          _$SignupResponseDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupResponseDataDtoImplToJson(
      this,
    );
  }
}

abstract class _SignupResponseDataDto implements SignupResponseDataDto {
  const factory _SignupResponseDataDto({required final String identifier}) =
      _$SignupResponseDataDtoImpl;

  factory _SignupResponseDataDto.fromJson(Map<String, dynamic> json) =
      _$SignupResponseDataDtoImpl.fromJson;

  @override
  String get identifier;

  /// Create a copy of SignupResponseDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupResponseDataDtoImplCopyWith<_$SignupResponseDataDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
