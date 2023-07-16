import 'package:pokerspot_partner_app/data/network/api_client.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../models/store/mtt_game.dart';

class GameRepository {
  final DioClient _dio;

  GameRepository(this._dio);

  /// 토너 게임 수정
  Future<bool> updateGame(
      {required String id, required MttGameModel data}) async {
    try {
      await _dio.patch(
        '/games/mtt/$id',
        data: data.toJson(),
      );
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }

  /// 토너 게임 우선순위 수정
  Future<bool> updateGamePriority({required List<MttGameModel> data}) async {
    try {
      await _dio.patch(
        '/games/mtt/priority',
        data: {'mttGames': data.map((e) => e.toRequestPriority()).toList()},
      );
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }
}
