// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupInput _$SignupInputFromJson(Map<String, dynamic> json) {
  return _SignupInput.fromJson(json);
}

/// @nodoc
mixin _$SignupInput {
  String get identifier => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SignupInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupInputCopyWith<SignupInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupInputCopyWith<$Res> {
  factory $SignupInputCopyWith(
          SignupInput value, $Res Function(SignupInput) then) =
      _$SignupInputCopyWithImpl<$Res, SignupInput>;
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class _$SignupInputCopyWithImpl<$Res, $Val extends SignupInput>
    implements $SignupInputCopyWith<$Res> {
  _$SignupInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupInputImplCopyWith<$Res>
    implements $SignupInputCopyWith<$Res> {
  factory _$$SignupInputImplCopyWith(
          _$SignupInputImpl value, $Res Function(_$SignupInputImpl) then) =
      __$$SignupInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class __$$SignupInputImplCopyWithImpl<$Res>
    extends _$SignupInputCopyWithImpl<$Res, _$SignupInputImpl>
    implements _$$SignupInputImplCopyWith<$Res> {
  __$$SignupInputImplCopyWithImpl(
      _$SignupInputImpl _value, $Res Function(_$SignupInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_$SignupInputImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupInputImpl implements _SignupInput {
  _$SignupInputImpl({required this.identifier, required this.password});

  factory _$SignupInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupInputImplFromJson(json);

  @override
  final String identifier;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupInput(identifier: $identifier, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupInputImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, password);

  /// Create a copy of SignupInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupInputImplCopyWith<_$SignupInputImpl> get copyWith =>
      __$$SignupInputImplCopyWithImpl<_$SignupInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupInputImplToJson(
      this,
    );
  }
}

abstract class _SignupInput implements SignupInput {
  factory _SignupInput(
      {required final String identifier,
      required final String password}) = _$SignupInputImpl;

  factory _SignupInput.fromJson(Map<String, dynamic> json) =
      _$SignupInputImpl.fromJson;

  @override
  String get identifier;
  @override
  String get password;

  /// Create a copy of SignupInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupInputImplCopyWith<_$SignupInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
