import 'package:pokerspot_partner_app/data/repositories/reservation_repository.dart';

import '../../data/models/reservation/reservations.dart';

class ReservationUsecase {
  final ReservationRepository _repository;

  ReservationUsecase(this._repository);

  Future<ReservationsModel?> getReservations({
    required String id,
    required String status,
    int page = 1,
  }) async {
    return await _repository.getReservations(id: id, status: status, page: 1);
  }

  Future<String?> accept(String id) async {
    return await _repository.accept(id);
  }

  Future<String?> reject({required String id, required String comment}) async {
    return await _repository.reject(id: id, comment: comment);
  }

  Future<bool> rejectAll({required String id, required String comment}) async {
    return await _repository.rejectAll(id: id, comment: comment);
  }

  Future<bool> getPauseStatus(String id) async {
    return await _repository.getPauseStatus(id);
  }

  Future<void> changeStatus(String id) async {
    if (await _repository.getPauseStatus(id)) {
      await _repository.unPause(id);
    } else {
      await _repository.pause(id);
    }
  }

  Future<void> pause(String id) async {
    await _repository.pause(id);
  }

  Future<void> unPause(String id) async {
    await _repository.unPause(id);
  }
}
