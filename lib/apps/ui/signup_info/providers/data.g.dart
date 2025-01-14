// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupInfoModelImpl _$$SignupInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupInfoModelImpl(
      id: json['id'] as String,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      isPasswordVisible: json['isPasswordVisible'] as bool,
      isPasswordConfirmVisible: json['isPasswordConfirmVisible'] as bool,
    );

Map<String, dynamic> _$$SignupInfoModelImplToJson(
        _$SignupInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'isPasswordVisible': instance.isPasswordVisible,
      'isPasswordConfirmVisible': instance.isPasswordConfirmVisible,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signupInfoDataHash() => r'779c8a56815c95901f2ca4371ea2d7fd59a29bed';

/// See also [SignupInfoData].
@ProviderFor(SignupInfoData)
final signupInfoDataProvider =
    AutoDisposeNotifierProvider<SignupInfoData, SignupInfoModel>.internal(
  SignupInfoData.new,
  name: r'signupInfoDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signupInfoDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignupInfoData = AutoDisposeNotifier<SignupInfoModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
