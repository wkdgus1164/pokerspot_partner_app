import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopEditOperationRunningTime extends StatelessWidget {
  const ShopEditOperationRunningTime({
    super.key,
    required this.startAt,
    required this.finishAt,
    required this.onStartPressed,
    required this.onFinishPressed,
  });

  final String startAt;
  final String finishAt;
  final Function() onStartPressed;
  final Function() onFinishPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '영업시간',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: customColorScheme.onSurface1,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Text(
                '오픈시간',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: customColorScheme.onSurface2,
                    ),
              ),
              const SizedBox(width: padding16),
              Expanded(
                child: InkWell(
                  onTap: onStartPressed,
                  child: Container(
                    padding: const EdgeInsets.all(padding16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: lightColorScheme.outline),
                    ),
                    child: Text(
                      startAt,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: customColorScheme.onSurface1,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Text(
                '마감시간',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: customColorScheme.onSurface2,
                    ),
              ),
              const SizedBox(width: padding16),
              Expanded(
                child: InkWell(
                  onTap: onFinishPressed,
                  child: Container(
                    padding: const EdgeInsets.all(padding16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: lightColorScheme.outline),
                    ),
                    child: Text(
                      finishAt,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: customColorScheme.onSurface1,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
