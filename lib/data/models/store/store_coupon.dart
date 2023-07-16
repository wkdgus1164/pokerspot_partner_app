import 'package:json_annotation/json_annotation.dart';

part 'store_coupon.g.dart';

@JsonSerializable()
class StoreCouponModel {
  final String uid;
  final String title;
  final String subtitle;
  final String image;
  final int totalAmount;
  final int usedAmount;
  final int remainAmount;

  StoreCouponModel({
    required this.uid,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.totalAmount,
    required this.usedAmount,
    required this.remainAmount,
  });

  factory StoreCouponModel.fromJson(Map<String, dynamic> json) =>
      _$StoreCouponModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCouponModelToJson(this);
}
