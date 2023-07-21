import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../partner/partner_store.dart';
import 'mtt_game.dart';

part 'create_store_request.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateStoreRequestModel {
  final CreateStoreModel store;
  final List<MttGameModel> mttGames;

  CreateStoreRequestModel({
    required this.store,
    this.mttGames = const [],
  });

  factory CreateStoreRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateStoreRequestModelToJson(this);
}

@CopyWith()
@JsonSerializable(explicitToJson: true)
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
  final String? closeTime;
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
    this.openTime = '00:00',
    this.closeTime,
    this.type = 'MTT',
  });

  factory CreateStoreModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateStoreModelToJson(this);
}
