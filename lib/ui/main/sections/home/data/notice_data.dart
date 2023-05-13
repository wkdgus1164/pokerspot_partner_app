class HomeNoticeItemProps {
  final String title;
  final String createdAt;

  HomeNoticeItemProps({
    required this.title,
    required this.createdAt,
  });
}

List<HomeNoticeItemProps> noticeList = [
  HomeNoticeItemProps(title: '[공지] 공지사항 안내 [공지] 공지사항 안내 [공지] 공지사항 안내', createdAt: '2022. 05. 05.'),
  HomeNoticeItemProps(title: '[공지] 공지사항 안내', createdAt: '2022. 05. 05.'),
  HomeNoticeItemProps(title: '[공지] 공지사항 안내', createdAt: '2022. 05. 05.'),
  HomeNoticeItemProps(title: '[공지] 공지사항 안내', createdAt: '2022. 05. 05.'),
  HomeNoticeItemProps(title: '[공지] 공지사항 안내', createdAt: '2022. 05. 05.'),
];
