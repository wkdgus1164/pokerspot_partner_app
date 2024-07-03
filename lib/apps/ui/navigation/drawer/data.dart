import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class DrawerStoresModel with _$DrawerStoresModel {
  factory DrawerStoresModel({
    required String id,
    required String name,
  }) = _DrawerStoresModel;
}

@riverpod
class DrawerStoresData extends _$DrawerStoresData {
  @override
  List<DrawerStoresModel> build() {
    return [
      DrawerStoresModel(
        id: '1',
        name: 'store1',
      ),
      DrawerStoresModel(
        id: '2',
        name: 'store2',
      ),
      DrawerStoresModel(
        id: '3',
        name: 'store3',
      ),
      DrawerStoresModel(
        id: '4',
        name: 'store4',
      ),
      DrawerStoresModel(
        id: '5',
        name: 'store5',
      ),
      DrawerStoresModel(
        id: '6',
        name: 'store6',
      ),
      DrawerStoresModel(
        id: '7',
        name: 'store7',
      ),
      DrawerStoresModel(
        id: '8',
        name: 'store8',
      ),
      DrawerStoresModel(
        id: '9',
        name: 'store9',
      ),
      DrawerStoresModel(
        id: '10',
        name: 'store10',
      ),
      DrawerStoresModel(
        id: '11',
        name: 'store11',
      ),
      DrawerStoresModel(
        id: '12',
        name: 'store12',
      ),
      DrawerStoresModel(
        id: '13',
        name: 'store13',
      ),
      DrawerStoresModel(
        id: '14',
        name: 'store14',
      ),
      DrawerStoresModel(
        id: '15',
        name: 'store15',
      ),
    ];
  }
}
