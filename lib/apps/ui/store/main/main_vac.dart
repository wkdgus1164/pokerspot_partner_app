import 'package:flutter/material.dart';

class StoreMainVac extends StatelessWidget {
  const StoreMainVac({
    super.key,
    required this.handleBizInfoClick,
    required this.handleImageClick,
    required this.handleMentClick,
    required this.handleBusinessHoursClick,
    required this.handlePreviewClick,
  });

  final Function() handleBizInfoClick;
  final Function() handleImageClick;
  final Function() handleMentClick;
  final Function() handleBusinessHoursClick;
  final Function() handlePreviewClick;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const Icon(Icons.storefront_rounded),
            title: const Text('사업자 정보 관리'),
            subtitle: const Text('매장 사업자 정보를 관리할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleBizInfoClick,
          ),
          ListTile(
            leading: const Icon(Icons.image_rounded),
            title: const Text('이미지 관리'),
            subtitle: const Text('매장 썸네일 및 이미지를 관리할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleImageClick,
          ),
          ListTile(
            leading: const Icon(Icons.waving_hand_rounded),
            title: const Text('매장 소개 관리'),
            subtitle: const Text('매장 소개 문구를 관리할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleMentClick,
          ),
          ListTile(
            leading: const Icon(Icons.access_time_filled_rounded),
            title: const Text('영업 시간 관리'),
            subtitle: const Text('매장 영업 시간 정보를 관리할 수 있어요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handleBusinessHoursClick,
          ),
          ListTile(
            leading: const Icon(Icons.preview_rounded),
            title: const Text('내 매장 미리보기'),
            subtitle: const Text('손님 앱에서 보여지는 내 매장 화면을 미리 보여드려요.'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: handlePreviewClick,
          ),
        ],
      ),
    );
  }
}
