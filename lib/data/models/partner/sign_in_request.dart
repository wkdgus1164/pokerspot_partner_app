import 'package:json_annotation/json_annotation.dart';

part 'sign_in_request.g.dart';

@JsonSerializable()
class SignInRequestModel {
  final String name;
  final String phoneNumber;
  final String identifier;
  final String password;
  final String email;
  final String impUid;

  SignInRequestModel({
    required this.name,
    required this.phoneNumber,
    required this.identifier,
    required this.password,
    required this.email,
    required this.impUid,
  });

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignInRequestModelToJson(this);
}
