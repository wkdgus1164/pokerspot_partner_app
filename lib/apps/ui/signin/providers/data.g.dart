// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninModelImpl _$$SigninModelImplFromJson(Map<String, dynamic> json) =>
    _$SigninModelImpl(
      id: json['id'] as String,
      password: json['password'] as String,
      isPwVisible: json['isPwVisible'] as bool,
    );

Map<String, dynamic> _$$SigninModelImplToJson(_$SigninModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'isPwVisible': instance.isPwVisible,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signinDataHash() => r'4799876180c40867a327045b7917cae22704cc94';

/// See also [SigninData].
@ProviderFor(SigninData)
final signinDataProvider =
    AutoDisposeNotifierProvider<SigninData, SigninModel>.internal(
  SigninData.new,
  name: r'signinDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signinDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SigninData = AutoDisposeNotifier<SigninModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
