import 'package:pokerspot_partner_app/data/models/partner/partner.dart';
import 'package:pokerspot_partner_app/data/models/partner/sign_in_request.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';

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
}
