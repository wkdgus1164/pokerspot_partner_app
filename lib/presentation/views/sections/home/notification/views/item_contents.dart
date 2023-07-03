import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class NotificationItemContents extends StatelessWidget {
  const NotificationItemContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(padding16),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: lightColorScheme.surfaceVariant,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                child: Icon(
                  Icons.notifications,
                  color: lightColorScheme.primary,
                ),
              ),
              const SizedBox(width: padding10),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '업주님의 매장 ‘몬스터홀덤펍’의 등록이 승인되었습니다.',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: customColorScheme.onSurface2,
                            ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '21시간 전',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: customColorScheme.onSurface4,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1, thickness: 1),
      ],
    );
  }
}
