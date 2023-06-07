import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

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
  final List<CreateStoreImageModel> storeImages;
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
    this.openTime = '',
    this.closeTime,
    this.type = 'MTT',
  });

  factory CreateStoreModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateStoreModelToJson(this);
}

@JsonSerializable()
class CreateStoreImageModel {
  final String url;
  final int priority;

  CreateStoreImageModel({
    required this.url,
    this.priority = 0,
  });

  factory CreateStoreImageModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreImageModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateStoreImageModelToJson(this);
}

@CopyWith()
@JsonSerializable()
class MttGameModel {
  final TonerType type;
  final int entryPrice;
  final int entryMin;
  final int entryMax;
  final String prize;
  final String targetMttName;
  final bool isDaily;

  MttGameModel({
    this.type = TonerType.daily,
    this.entryPrice = 10000,
    this.entryMin = 1,
    this.entryMax = 2,
    this.prize = '100%',
    this.targetMttName = '',
    this.isDaily = false,
  });

  factory MttGameModel.fromJson(Map<String, dynamic> json) =>
      _$MttGameModelFromJson(json);
  Map<String, dynamic> toJson() => _$MttGameModelToJson(this);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TonerType {
  daily,
  seed,
}
