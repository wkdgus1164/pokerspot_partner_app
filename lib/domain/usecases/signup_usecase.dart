import 'package:pokerspot_partner_app/data/models/partner/signup_request.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/domain/entities/signup/signup_agreement.dart';
import 'package:pokerspot_partner_app/domain/entities/signup/signup_information.dart';

import '../../data/models/partner/phone_validate_request.dart';

class SignupUsecase {
  final PartnerRepository _repository;

  SignupUsecase(this._repository);

  Future<bool> checkDuplicate(String id) async {
    return await _repository.idValidate(id);
  }

  Future<bool> checkPhoneNumber({
    required String phoneNumber,
    required String name,
    required String impUid,
  }) async {
    final model = PhoneValidateRequestModel(
      phoneNumber: phoneNumber,
      name: name,
      impUid: impUid,
    );
    return await _repository.phoneValidate(model);
  }

  Future<String?> signUp(
    SignupInformationModel information,
  ) async {
    if (!validateInformation(information)) {
      return '정보를 양식에 맞게 입력해주세요.';
    }
    final model = SignupRequestModel(
      name: information.name,
      phoneNumber: information.phoneNumber,
      identifier: information.id,
      password: information.password,
      email: information.email,
      impUid: information.impUid,
    );
    return await _repository.signup(model);
  }

  bool validateAgreement(SignupAgreementModel agreement) {
    return agreement.service && agreement.privacy && agreement.sensitivity;
  }

  bool validateInformation(SignupInformationModel information) {
    final idRegExp = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    final passwordRegExp =
        RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    final emailRegExp = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$');

    return information.id.isNotEmpty &&
        information.password.isNotEmpty &&
        information.checkPassword.isNotEmpty &&
        information.phoneNumber.isNotEmpty &&
        information.name.isNotEmpty &&
        idRegExp.hasMatch(information.id) &&
        passwordRegExp.hasMatch(information.password) &&
        emailRegExp.hasMatch(information.email) &&
        information.password == information.checkPassword;
  }
}
