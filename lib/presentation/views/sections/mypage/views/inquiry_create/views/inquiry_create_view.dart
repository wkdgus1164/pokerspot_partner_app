import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class InquiryCreateView extends StatelessWidget {
  const InquiryCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('새 문의 작성')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CustomTextFieldSet(
              inputLabel: '제목',
              inputHintText: '제목 입력',
            ),
            const SizedBox(height: 32),
            const CustomTextFieldSet(
              inputLabel: '문의 내용',
              inputHintText: '문의 내용을 입력해주세요.',
            ),
            const Spacer(),
            CustomFilledButton(
                text: '문의하기',
                onPressed: () {
                  showInformationDialog(
                    context: context,
                    title: '문의 완료',
                    content: '1:1 문의가 접수되었습니다.\n\n문의 답변은 나의 문의 내역에서 확인 가능합니다.',
                    onConfirm: () {
                      context.pushReplacement(CustomRouter.inquiry.path);
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
