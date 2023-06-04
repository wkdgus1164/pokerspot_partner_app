import 'package:pokerspot_partner_app/data/models/partner/signup_request.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';

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

  Future<bool> signUp(
    String id,
    String password,
    String checkPassword,
    String email,
    String name,
    String phoneNumber,
    String impUid,
  ) async {
    final model = SignupRequestModel(
      name: name,
      phoneNumber: phoneNumber,
      identifier: id,
      password: password,
      email: email,
      impUid: impUid,
    );
    if (!_validate(model)) {
      return false;
    }
    return await _repository.signup(model);
  }

  bool _validate(SignupRequestModel model) {
    return true;
  }
}
