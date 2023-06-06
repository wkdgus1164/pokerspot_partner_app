import 'package:json_annotation/json_annotation.dart';

part 'biz_validate_request.g.dart';

@JsonSerializable()
class BizValidateRequestModel {
  final String bizNumber;
  final String name;
  final String bizStartYMD;

  BizValidateRequestModel({
    required this.bizNumber,
    required this.name,
    required this.bizStartYMD,
  });

  factory BizValidateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BizValidateRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$BizValidateRequestModelToJson(this);
}
