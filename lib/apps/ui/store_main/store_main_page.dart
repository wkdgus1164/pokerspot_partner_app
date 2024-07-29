import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/drawer/drawer_view.dart';
import 'package:pokerspot_partner_app/apps/ui/store_main/store_main_vac.dart';
import 'package:pokerspot_partner_app/common/placeholder/empty_with_button.dart';

class StoreMainPage extends StatefulHookConsumerWidget {
  const StoreMainPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoreMainPageState();
}

class _StoreMainPageState extends ConsumerState<StoreMainPage> {
  final String _title = '포커스팟 홀덤펍';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      drawer: const NavigationDrawerView(),
      body: StoreMainVac(
        handleBusinessInfoClick: () {},
        handleImageClick: () {},
        handleIntroductionClick: () {},
        handleBusinessHoursClick: () {},
        handlePreviewClick: () {},
      ),
      // _buildPlaceholder(),
    );
  }

  Center _buildPlaceholder() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: EmptyWithButton(
          icon: Icons.info_rounded,
          message: '선택된 매장이 없어요.\n\n좌측 사이드바에서 매장을 선택하거나,\n새로운 매장을 등록해 보세요.',
          buttonText: '매장 등록하기',
          handleButtonClick: () {},
        ),
      ),
    );
  }
}
