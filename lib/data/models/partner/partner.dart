import 'package:json_annotation/json_annotation.dart';

part 'partner.g.dart';

@JsonSerializable()
class PartnerModel {
  final String uid;
  final String name;
  final String phoneNumber;
  final String identifier;
  final String email;

  PartnerModel({
    required this.uid,
    required this.name,
    required this.phoneNumber,
    required this.identifier,
    required this.email,
  });

  factory PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelFromJson(json);

  Map<String, dynamic> toJson() => _$PartnerModelToJson(this);
}
