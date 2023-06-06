import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../partner/partner_store.dart';

part 'create_store_request.g.dart';

@JsonSerializable()
class CreateStoreRequestModel {
  final CreateStoreModel store;
  final List<MttGameModel> mttGames;
  final List<EtcGameModel> etcGames;

  CreateStoreRequestModel({
    required this.store,
    required this.mttGames,
    required this.etcGames,
  });

  factory CreateStoreRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateStoreRequestModelToJson(this);
}

@CopyWith()
@JsonSerializable()
class CreateStoreModel {
  final String bizNumber;
  final String ownerName;
  final String bizStartYMD;
  final String name;
  final String address;
  final String addressDetail;
  final double lat;
  final double lng;
  final String bizCategory;
  final String bizCategoryDetail;
  final List<StoreImageModel> storeImages;
  final String openTime;
  final String closeTime;
  final String type;

  CreateStoreModel({
    this.bizNumber = '',
    this.ownerName = '',
    this.bizStartYMD = '',
    this.name = '',
    this.address = '',
    this.addressDetail = '',
    this.lat = 0,
    this.lng = 0,
    this.bizCategory = '',
    this.bizCategoryDetail = '',
    this.storeImages = const [],
    this.openTime = '',
    this.closeTime = '',
    this.type = '',
  });

  factory CreateStoreModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateStoreModelToJson(this);
}

@JsonSerializable()
class MttGameModel {
  final String type;
  final int entryPrice;
  final int entryMin;
  final int entryMax;
  final String prize;
  final String mttName;
  final bool isDaily;

  MttGameModel({
    required this.type,
    required this.entryPrice,
    required this.entryMin,
    required this.entryMax,
    required this.prize,
    required this.mttName,
    required this.isDaily,
  });

  factory MttGameModel.fromJson(Map<String, dynamic> json) =>
      _$MttGameModelFromJson(json);
  Map<String, dynamic> toJson() => _$MttGameModelToJson(this);
}

@JsonSerializable()
class EtcGameModel {
  final int smallBlind;
  final int bigBlind;
  final int utgPrice;
  final int buyinMin;
  final int buyinMax;
  final int newUserBenefit;
  final int startReservationBenefit;
  final int earlyReservationBenefit;
  final int maxBuyinBenefit;

  EtcGameModel({
    required this.smallBlind,
    required this.bigBlind,
    required this.utgPrice,
    required this.buyinMin,
    required this.buyinMax,
    required this.newUserBenefit,
    required this.startReservationBenefit,
    required this.earlyReservationBenefit,
    required this.maxBuyinBenefit,
  });

  factory EtcGameModel.fromJson(Map<String, dynamic> json) =>
      _$EtcGameModelFromJson(json);
  Map<String, dynamic> toJson() => _$EtcGameModelToJson(this);
}
