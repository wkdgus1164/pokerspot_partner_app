import 'package:pokerspot_partner_app/data/repositories/notice_repository.dart';

import '../../data/models/notice/notice.dart';

class NoticeUsecase {
  final NoticeRepository _repository;

  NoticeUsecase(this._repository);

  Future<List<NoticeModel>> getNotices(int page) async {
    return await _repository.getNotices(page: page);
  }

  Future<NoticeModel?> getNotice(int id) async {
    return await _repository.getNotice(id);
  }
}
