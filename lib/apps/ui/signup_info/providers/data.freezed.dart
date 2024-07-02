// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupInfoModel _$SignupInfoModelFromJson(Map<String, dynamic> json) {
  return _SignupInfoModel.fromJson(json);
}

/// @nodoc
mixin _$SignupInfoModel {
  String get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get isPasswordConfirmVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupInfoModelCopyWith<SignupInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupInfoModelCopyWith<$Res> {
  factory $SignupInfoModelCopyWith(
          SignupInfoModel value, $Res Function(SignupInfoModel) then) =
      _$SignupInfoModelCopyWithImpl<$Res, SignupInfoModel>;
  @useResult
  $Res call(
      {String id,
      String password,
      String passwordConfirm,
      bool isPasswordVisible,
      bool isPasswordConfirmVisible});
}

/// @nodoc
class _$SignupInfoModelCopyWithImpl<$Res, $Val extends SignupInfoModel>
    implements $SignupInfoModelCopyWith<$Res> {
  _$SignupInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? isPasswordVisible = null,
    Object? isPasswordConfirmVisible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordConfirmVisible: null == isPasswordConfirmVisible
          ? _value.isPasswordConfirmVisible
          : isPasswordConfirmVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupInfoModelImplCopyWith<$Res>
    implements $SignupInfoModelCopyWith<$Res> {
  factory _$$SignupInfoModelImplCopyWith(_$SignupInfoModelImpl value,
          $Res Function(_$SignupInfoModelImpl) then) =
      __$$SignupInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String password,
      String passwordConfirm,
      bool isPasswordVisible,
      bool isPasswordConfirmVisible});
}

/// @nodoc
class __$$SignupInfoModelImplCopyWithImpl<$Res>
    extends _$SignupInfoModelCopyWithImpl<$Res, _$SignupInfoModelImpl>
    implements _$$SignupInfoModelImplCopyWith<$Res> {
  __$$SignupInfoModelImplCopyWithImpl(
      _$SignupInfoModelImpl _value, $Res Function(_$SignupInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? isPasswordVisible = null,
    Object? isPasswordConfirmVisible = null,
  }) {
    return _then(_$SignupInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordConfirmVisible: null == isPasswordConfirmVisible
          ? _value.isPasswordConfirmVisible
          : isPasswordConfirmVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupInfoModelImpl implements _SignupInfoModel {
  _$SignupInfoModelImpl(
      {required this.id,
      required this.password,
      required this.passwordConfirm,
      required this.isPasswordVisible,
      required this.isPasswordConfirmVisible});

  factory _$SignupInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupInfoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  final bool isPasswordVisible;
  @override
  final bool isPasswordConfirmVisible;

  @override
  String toString() {
    return 'SignupInfoModel(id: $id, password: $password, passwordConfirm: $passwordConfirm, isPasswordVisible: $isPasswordVisible, isPasswordConfirmVisible: $isPasswordConfirmVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(
                    other.isPasswordConfirmVisible, isPasswordConfirmVisible) ||
                other.isPasswordConfirmVisible == isPasswordConfirmVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, password, passwordConfirm,
      isPasswordVisible, isPasswordConfirmVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupInfoModelImplCopyWith<_$SignupInfoModelImpl> get copyWith =>
      __$$SignupInfoModelImplCopyWithImpl<_$SignupInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupInfoModelImplToJson(
      this,
    );
  }
}

abstract class _SignupInfoModel implements SignupInfoModel {
  factory _SignupInfoModel(
      {required final String id,
      required final String password,
      required final String passwordConfirm,
      required final bool isPasswordVisible,
      required final bool isPasswordConfirmVisible}) = _$SignupInfoModelImpl;

  factory _SignupInfoModel.fromJson(Map<String, dynamic> json) =
      _$SignupInfoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  bool get isPasswordVisible;
  @override
  bool get isPasswordConfirmVisible;
  @override
  @JsonKey(ignore: true)
  _$$SignupInfoModelImplCopyWith<_$SignupInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
