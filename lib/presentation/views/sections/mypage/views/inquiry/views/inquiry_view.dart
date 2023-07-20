import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/inquiry/views/components/item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class InquiryView extends StatelessWidget {
  const InquiryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('1:1 문의')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => context.push(CustomRouter.inquiryCreate.path),
                child: const Text('새 문의 작성'),
              ),
            ),
          ),
          const CustomDivider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InquiryItem(
                    onClick: () {},
                    date: '21시간 전',
                    title: '문의사항 제목',
                    content: '문의 내용',
                    status: '답변 대기중',
                    isExpand: true,
                  ),
                  InquiryItem(
                    onClick: () {},
                    date: '21시간 전',
                    title: '문의사항 제목',
                    content: '문의 내용',
                    status: '답변 대기중',
                    isExpand: true,
                  ),
                  InquiryItem(
                    onClick: () {},
                    date: '21시간 전',
                    title: '문의사항 제목',
                    content: '문의 내용',
                    status: '답변 대기중',
                    isExpand: false,
                  ),
                  InquiryItem(
                    onClick: () {},
                    date: '21시간 전',
                    title: '문의사항 제목',
                    content: '문의 내용',
                    status: '답변 대기중',
                    isExpand: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
