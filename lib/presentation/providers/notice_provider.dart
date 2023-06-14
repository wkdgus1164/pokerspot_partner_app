import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/notice/notice.dart';
import 'package:pokerspot_partner_app/domain/usecases/notice_usecase.dart';

class NoticeProvider with ChangeNotifier {
  final NoticeUsecase _usecase;

  List<NoticeModel> _notices = [];
  List<NoticeModel> get notices => _notices;

  List<bool> _isExpands = [];
  List<bool> get isExpands => _isExpands;

  NoticeProvider(this._usecase) {
    getNotices();
  }

  Future<void> getNotices() async {
    _notices = await _usecase.getNotices(1);
    _isExpands = List.generate(notices.length, (index) => false);
    notifyListeners();
  }

  Future<void> getNotice(int id) async {
    final index = notices.indexWhere((n) => n.id == id);
    _isExpands[index] = !isExpands[index];
    if (notices[index].content.isEmpty) {
      final notice = await _usecase.getNotice(id);
      if (notice != null) {
        final index = notices.indexWhere((n) => n.id == id);
        _notices[index] = notices[index].copyWith(content: notice.content);
      }
    }
    notifyListeners();
  }
}
