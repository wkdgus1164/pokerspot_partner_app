import 'package:pokerspot_partner_app/data/models/store/biz_validate_request.dart';
import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';

import '../../data/models/store/create_store_request.dart';

class CreateStoreUsecase {
  final StoreRepository _repository;

  CreateStoreUsecase(this._repository);

  Future<String?> bizValidate(CreateStoreModel model) async {
    // TODO 실제 정보로 인증
    /*
    final data = BizValidateRequestModel(
      bizNumber: model.bizNumber,
      name: model.name,
      bizStartYMD: model.bizStartYMD,
    );
     */
    final data = BizValidateRequestModel(
      bizNumber: "7698602741",
      name: "강영민",
      bizStartYMD: "20230410",
    );
    return await _repository.bizValidate(data);
  }
}
