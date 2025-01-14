// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninInput _$SigninInputFromJson(Map<String, dynamic> json) {
  return _SigninInput.fromJson(json);
}

/// @nodoc
mixin _$SigninInput {
  String get identifier => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SigninInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SigninInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninInputCopyWith<SigninInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninInputCopyWith<$Res> {
  factory $SigninInputCopyWith(
          SigninInput value, $Res Function(SigninInput) then) =
      _$SigninInputCopyWithImpl<$Res, SigninInput>;
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class _$SigninInputCopyWithImpl<$Res, $Val extends SigninInput>
    implements $SigninInputCopyWith<$Res> {
  _$SigninInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninInput
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
abstract class _$$SigninInputImplCopyWith<$Res>
    implements $SigninInputCopyWith<$Res> {
  factory _$$SigninInputImplCopyWith(
          _$SigninInputImpl value, $Res Function(_$SigninInputImpl) then) =
      __$$SigninInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class __$$SigninInputImplCopyWithImpl<$Res>
    extends _$SigninInputCopyWithImpl<$Res, _$SigninInputImpl>
    implements _$$SigninInputImplCopyWith<$Res> {
  __$$SigninInputImplCopyWithImpl(
      _$SigninInputImpl _value, $Res Function(_$SigninInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_$SigninInputImpl(
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
class _$SigninInputImpl implements _SigninInput {
  _$SigninInputImpl({required this.identifier, required this.password});

  factory _$SigninInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninInputImplFromJson(json);

  @override
  final String identifier;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninInput(identifier: $identifier, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninInputImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, password);

  /// Create a copy of SigninInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninInputImplCopyWith<_$SigninInputImpl> get copyWith =>
      __$$SigninInputImplCopyWithImpl<_$SigninInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninInputImplToJson(
      this,
    );
  }
}

abstract class _SigninInput implements SigninInput {
  factory _SigninInput(
      {required final String identifier,
      required final String password}) = _$SigninInputImpl;

  factory _SigninInput.fromJson(Map<String, dynamic> json) =
      _$SigninInputImpl.fromJson;

  @override
  String get identifier;
  @override
  String get password;

  /// Create a copy of SigninInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninInputImplCopyWith<_$SigninInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
