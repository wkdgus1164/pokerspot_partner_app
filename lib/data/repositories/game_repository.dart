import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/models/game/create_game.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../models/store/mtt_game.dart';

class GameRepository {
  final DioClient _dio;

  GameRepository(this._dio);

  /// 토너 게임들 조회
  Future<Either<String, List<MttGameModel>>> getGames(String id) async {
    try {
      final response = await _dio.get('/stores/$id/games');
      return Right((response.data['mttGames'] as List)
          .map((e) => MttGameModel.fromJson(e))
          .toList());
    } catch (e) {
      if (e is DioError) {
        return Left(e.response?.data['message']);
      }
      Logger.e(e);
      rethrow;
    }
  }

  /// 토너 게임 생성
  Future<MttGameModel?> addGame(CreateGameModel model) async {
    try {
      final response = await _dio.post(
        '/games/mtt/',
        data: model.toJson(),
      );
      return MttGameModel.fromJson(response.data);
    } catch (e) {
      Logger.e(e);
      return null;
    }
  }

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

  /// 토너 게임 삭제
  Future<bool> deleteGame(String id) async {
    try {
      await _dio.delete('/games/mtt/$id');
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
