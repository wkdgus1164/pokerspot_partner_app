import 'package:json_annotation/json_annotation.dart';

part 'affiliate.g.dart';

@JsonSerializable()
class AffiliateModel {
  final String uid;
  final String name;
  final int originPrice;
  final int price;

  AffiliateModel({
    required this.uid,
    required this.name,
    required this.originPrice,
    required this.price,
  });

  factory AffiliateModel.fromJson(Map<String, dynamic> json) =>
      _$AffiliateModelFromJson(json);
  Map<String, dynamic> toJson() => _$AffiliateModelToJson(this);
}
