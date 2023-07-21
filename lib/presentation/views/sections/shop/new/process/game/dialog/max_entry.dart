import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';

class GameDialogMaxEntry extends StatelessWidget {
  const GameDialogMaxEntry({
    super.key,
    required this.isSelected,
    this.selectedValue = 0,
    this.isInfinite = false,
    required this.onInfinitePressed,
    required this.onTap,
  });

  final bool isSelected;
  final int? selectedValue;
  final bool? isInfinite;
  final Function() onInfinitePressed;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    String setMaxEntry() {
      if (isSelected) {
        if (selectedValue == null) {
          return '제한 없음';
        }
        return '$selectedValue만';
      }

      if (!isSelected && !isInfinite!) {
        return '최대 엔트리';
      }

      if (isInfinite!) {
        return '제한 없음';
      }
      return '';
    }

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            '최대 엔트리',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: customColorScheme.onSurface2,
                ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  if (!isInfinite!) {
                    showModalBottomSheet(
                      context: context,
                      builder: (_) => Container(
                        padding: const EdgeInsets.all(padding10),
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(padding16),
                              child: Text(
                                '최대 엔트리',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Divider(
                              color: lightColorScheme.outline,
                              height: 1,
                              thickness: 1,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 400,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 100,
                                itemBuilder: (_, int index) => ListTile(
                                  title: Text('${index + 1}만'),
                                  onTap: () {
                                    onTap.call((index + 1) * 10000);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isInfinite!
                        ? lightColorScheme.surfaceVariant
                        : Colors.white,
                    border: Border.all(color: lightColorScheme.outline),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(padding10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          setMaxEntry(),
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: isSelected
                                        ? customColorScheme.onSurface2
                                        : customColorScheme.onSurface4,
                                  ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: customColorScheme.onSurface4,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: padding10),
              Row(
                children: [
                  CustomCheckbox(
                    onChanged: onInfinitePressed,
                    value: isInfinite!,
                    size: 14,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      '제한 없음',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
