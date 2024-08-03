import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/routes/routes.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz/biz_vac.dart';

class StoreBizPage extends StatefulHookConsumerWidget {
  const StoreBizPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoreBizPageState();
}

class _StoreBizPageState extends ConsumerState<StoreBizPage> {
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
      body: const StoreBizVac(
        businessName: '포커스팟 홀덤펍',
        ceoName: '홍길동',
        address: '서울특별시 강남구 역삼동 123-456',
        industry: '음식점',
        businessType: '개인사업자',
      ),
    );
  }
}
