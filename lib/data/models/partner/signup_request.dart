import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequestModel {
  final String name;
  final String phoneNumber;
  final String identifier;
  final String password;
  final String email;
  final String impUid;

  SignupRequestModel({
    required this.name,
    required this.phoneNumber,
    required this.identifier,
    required this.password,
    required this.email,
    required this.impUid,
  });

  factory SignupRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupRequestModelToJson(this);
}
