import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';

part 'partner_store_detail.g.dart';

@CopyWith()
@JsonSerializable()
class PartnerStoreDetailModel {
  final String uid;
  final String name;
  final String type;
  final String bizNumber;
  final String ownerName;
  final String bizStartYMD;
  final String openTime;
  final String? closeTime;
  final String address;
  final String addressDetail;
  final String bizCategory;
  final String bizCategoryDetail;
  final int? distance;
  final List<StoreImageModel> storeImages;

  PartnerStoreDetailModel({
    required this.uid,
    required this.name,
    required this.type,
    required this.bizNumber,
    required this.ownerName,
    required this.bizStartYMD,
    required this.openTime,
    this.closeTime,
    required this.address,
    required this.addressDetail,
    required this.bizCategory,
    required this.bizCategoryDetail,
    this.distance,
    this.storeImages = const [],
  });

  factory PartnerStoreDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerStoreDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$PartnerStoreDetailModelToJson(this);
}
