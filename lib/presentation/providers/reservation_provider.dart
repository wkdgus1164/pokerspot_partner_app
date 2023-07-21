import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/reservation/reservations.dart';
import 'package:pokerspot_partner_app/domain/usecases/reservation_usecase.dart';

class ReservationProvider with ChangeNotifier {
  final ReservationUsecase _usecase;

  final String _storeId;

  ReservationsModel? _reservations;
  ReservationsModel? get reservations => _reservations;

  ReservationProvider(this._storeId, this._usecase) {
    init();
  }

  Future<void> init() async {
    getReservations(status: 'PENDING', page: 1);
  }

  Future<void> getReservations(
      {required String status, required int page}) async {
    final newReservations = await _usecase.getReservations(
        id: _storeId, status: status, page: page);
    if (newReservations == null) {
      return;
    }
    if (_reservations == null) {
      _reservations = newReservations;
    } else {
      _reservations!.reservations.addAll(newReservations.reservations);
    }

    notifyListeners();
  }

  Future<String?> accept(String id) async {
    return await _usecase.accept(id);
  }

  Future<String?> reject({required String id, required String comment}) async {
    return await _usecase.reject(id: _storeId, comment: comment);
  }

  Future<bool> rejectAll(String comment) async {
    return await _usecase.rejectAll(id: _storeId, comment: comment);
  }

  Future<bool> getPauseStatus() async {
    return await _usecase.getPauseStatus(_storeId);
  }

  Future<bool> changePauseStatus() async {
    await _usecase.pause(_storeId);
    return await _usecase.getPauseStatus(_storeId);
  }
}
