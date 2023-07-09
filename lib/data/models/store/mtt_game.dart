import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mtt_game.g.dart';

@CopyWith()
@JsonSerializable()
class MttGameModel {
  @JsonKey(includeToJson: false)
  final String uid;
  @JsonKey(includeToJson: false)
  final String name;
  final TonerType type;
  final int entryPrice;
  final int entryMin;
  final int? entryMax;
  final String prize;
  final String targetMttName;
  final int gtdMinReward;
  final bool isDaily;
  @JsonKey(includeToJson: false)
  final bool isToday;
  @JsonKey(includeToJson: false)
  final bool isRealTime;
  @JsonKey(includeToJson: false)
  final int? priority;

  MttGameModel({
    this.uid = '',
    this.name = '',
    this.type = TonerType.daily,
    this.entryPrice = 10000,
    this.entryMin = 1,
    this.entryMax,
    this.prize = '100%',
    this.targetMttName = '',
    this.gtdMinReward = 1000000,
    this.isDaily = false,
    this.isToday = false,
    this.isRealTime = false,
    this.priority,
  });

  factory MttGameModel.fromJson(Map<String, dynamic> json) =>
      _$MttGameModelFromJson(json);
  Map<String, dynamic> toJson() => _$MttGameModelToJson(this);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TonerType {
  daily,
  seed,
  gtd,
}
