import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/routes/routes.dart';
import 'package:pokerspot_partner_app/apps/ui/store_business_info/store_business_info_vac.dart';

class StoreBusinessInfoPage extends StatefulHookConsumerWidget {
  const StoreBusinessInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreBusinessInfoPageState();
}

class _StoreBusinessInfoPageState extends ConsumerState<StoreBusinessInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사업자 정보 관리'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_rounded),
            onPressed: () {
              context.push(CustomRouter.storeBusinessInfoEdit.path);
            },
          ),
        ],
      ),
      body: const StoreBusinessInfoVac(
        businessName: '포커스팟 홀덤펍',
        ceoName: '홍길동',
        address: '서울특별시 강남구 역삼동 123-456',
        industry: '음식점',
        businessType: '개인사업자',
      ),
    );
  }
}
