import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'operation_time_data.freezed.dart';
part 'operation_time_data.g.dart';

@freezed
class StoreOperationTimeModel with _$StoreOperationTimeModel {
  factory StoreOperationTimeModel({
    required String openTime,
    required String openMinute,
    required String closeTime,
    required String closeMinute,
  }) = _StoreOperationTimeModel;

  factory StoreOperationTimeModel.fromJson(Map<String, dynamic> json) =>
      _$StoreOperationTimeModelFromJson(json);
}

@riverpod
class StoreOperationTimeData extends _$StoreOperationTimeData {
  @override
  StoreOperationTimeModel build() {
    return StoreOperationTimeModel(
      openTime: "00",
      openMinute: "00",
      closeTime: "00",
      closeMinute: "00",
    );
  }

  void setStoreOpenTime(String openTime) {
    state = state.copyWith(openTime: openTime);
  }

  void setStoreOpenMinute(String openMinute) {
    state = state.copyWith(openMinute: openMinute);
  }

  void setStoreCloseTime(String closeTime) {
    state = state.copyWith(closeTime: closeTime);
  }

  void setStoreCloseMinute(String closeMinute) {
    state = state.copyWith(closeMinute: closeMinute);
  }
}
