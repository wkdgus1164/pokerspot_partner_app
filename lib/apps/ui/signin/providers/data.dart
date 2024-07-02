import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data.g.dart';
part 'data.freezed.dart';

@freezed
class SigninModel with _$SigninModel {
  factory SigninModel({
    required String id,
    required String password,
    required bool isPwVisible,
  }) = _SigninModel;

  factory SigninModel.fromJson(Map<String, dynamic> json) =>
      _$SigninModelFromJson(json);
}

@riverpod
class SigninData extends _$SigninData {
  @override
  SigninModel build() {
    return SigninModel(
      id: '',
      password: '',
      isPwVisible: false,
    );
  }

  void setId(String id) {
    state = state.copyWith(id: id);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void clearId() {
    state = state.copyWith(id: '');
  }

  void clearPassword() {
    state = state.copyWith(password: '');
  }

  void togglePwVisibility() {
    state = state.copyWith(isPwVisible: !state.isPwVisible);
  }
}
