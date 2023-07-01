import 'package:pokerspot_partner_app/data/models/store/biz_validate_request.dart';
import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';

import '../../data/models/store/create_store_request.dart';

class CreateStoreUsecase {
  final StoreRepository _repository;

  CreateStoreUsecase(this._repository);

  Future<String?> bizValidate(CreateStoreModel model) async {
    final data = BizValidateRequestModel(
      bizNumber: model.bizNumber,
      name: model.ownerName,
      bizStartYMD: model.bizStartYMD,
    );
    return await _repository.bizValidate(data);
  }

  Future<String?> uploadImage(List<int> binaryData) async {
    return await _repository.uploadImage(binaryData);
  }

  Future<String?> createStore(CreateStoreRequestModel model) async {
    return await _repository
        .createStore(model)
        .then((value) => value.fold((l) => l, (r) => null));
  }

  Future<String?> storeValidate(String bizNumber) async {
    return await _repository
        .storeValidate(bizNumber)
        .then((value) => value.fold((l) => l, (r) => null));
  }
}
