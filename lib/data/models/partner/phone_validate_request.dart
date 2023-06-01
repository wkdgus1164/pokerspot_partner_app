import 'package:json_annotation/json_annotation.dart';

part 'phone_validate_request.g.dart';

@JsonSerializable()
class PhoneValidateRequestModel {
  final String impUid;
  final String name;
  final String phoneNumber;

  PhoneValidateRequestModel({
    required this.impUid,
    required this.name,
    required this.phoneNumber,
  });

  factory PhoneValidateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneValidateRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneValidateRequestModelToJson(this);
}
