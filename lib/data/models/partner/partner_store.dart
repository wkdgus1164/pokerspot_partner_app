import 'package:json_annotation/json_annotation.dart';

part 'partner_store.g.dart';

@JsonSerializable()
class PartnerStoreModel {
  final String uid;
  final String name;
  final String type;
  final String status;
  final bool isPaused;
  final List<StoreImageModel> storeImages;
  final StoreAffiliateModel storeAffiliate;

  PartnerStoreModel({
    required this.uid,
    required this.name,
    required this.type,
    required this.status,
    required this.isPaused,
    required this.storeImages,
    required this.storeAffiliate,
  });

  factory PartnerStoreModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerStoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$PartnerStoreModelToJson(this);
}

@JsonSerializable()
class StoreImageModel {
  final String url;

  StoreImageModel({required this.url});

  factory StoreImageModel.fromJson(Map<String, dynamic> json) =>
      _$StoreImageModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreImageModelToJson(this);
}

@JsonSerializable()
class StoreAffiliateModel {
  final DateTime startAt;
  final DateTime endAt;

  StoreAffiliateModel({required this.startAt, required this.endAt});

  factory StoreAffiliateModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAffiliateModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreAffiliateModelToJson(this);
}
