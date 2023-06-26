import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';

class MyUsecase {
  final PartnerRepository _repository;

  MyUsecase(this._repository);

  Future<bool> deletePartner() async {
    return await _repository.deletePartner();
  }
}
