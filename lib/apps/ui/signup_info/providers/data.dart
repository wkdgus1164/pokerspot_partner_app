import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'data.g.dart';
part 'data.freezed.dart';

@freezed
class SignupInfoModel with _$SignupInfoModel {
  factory SignupInfoModel({
    required String id,
    required String password,
    required String passwordConfirm,
    required bool isPasswordVisible,
    required bool isPasswordConfirmVisible,
  }) = _SignupInfoModel;

  factory SignupInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SignupInfoModelFromJson(json);
}

@riverpod
class SignupInfoData extends _$SignupInfoData {
  @override
  SignupInfoModel build() {
    return SignupInfoModel(
      id: '',
      password: '',
      passwordConfirm: '',
      isPasswordVisible: false,
      isPasswordConfirmVisible: false,
    );
  }

  void setId(String id) {
    state = state.copyWith(id: id);
    Logger().d('id: $id');
  }

  void clearId() {
    state = state.copyWith(id: '');
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
    Logger().d('password: $password');
  }

  void setPasswordConfirm(String passwordConfirm) {
    state = state.copyWith(passwordConfirm: passwordConfirm);
    Logger().d('passwordConfirm: $passwordConfirm');
  }

  void togglePasswordVisibility() {
    state = state.copyWith(
      isPasswordVisible: !state.isPasswordVisible,
    );
  }

  void togglePasswordConfirmVisibility() {
    state = state.copyWith(
      isPasswordConfirmVisible: !state.isPasswordConfirmVisible,
    );
  }
}
