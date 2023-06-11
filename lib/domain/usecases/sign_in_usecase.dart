import 'package:pokerspot_partner_app/data/models/partner/partner.dart';
import 'package:pokerspot_partner_app/data/models/partner/sign_in_request.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

class SignInUsecase {
  final PartnerRepository _repository;

  SignInUsecase(this._repository);

  Future<String?> signIn({required String id, required String password}) async {
    if (id.isNotEmpty && password.isNotEmpty) {
      return await _repository.signIn(SignInRequestModel(
        identifier: id,
        password: password,
      ));
    } else {
      return null;
    }
  }

  Future<PartnerModel?> getPartner() async {
    return await _repository.getPartner();
  }

  bool validate({required String id, required String password}) {
    final idRegExp = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    final passwordRegExp =
        RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
    return idRegExp.hasMatch(id) && passwordRegExp.hasMatch(password);
  }
}
