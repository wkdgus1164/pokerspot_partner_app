import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class InquiryBody extends StatelessWidget {
  const InquiryBody({
    super.key,
    required this.question,
    this.answer,
  });

  final String question;
  final String? answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: lightColorScheme.surfaceVariant,
      padding: const EdgeInsets.all(padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '문의 내용',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: lightColorScheme.primary,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            question,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: customColorScheme.onSurface3,
                ),
          ),
          const SizedBox(height: 24),
          if (answer != null) ...[
            Text(
              '답변 내용',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: lightColorScheme.error,
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              answer!,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: customColorScheme.onSurface3,
                  ),
            ),
          ],
        ],
      ),
    );
  }
}
