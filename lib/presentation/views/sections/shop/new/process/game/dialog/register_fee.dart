import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class GameDialogRegisterFee extends StatelessWidget {
  const GameDialogRegisterFee({
    super.key,
    required this.isSelected,
    this.selectedValue = 'GTD 토너',
  });

  final bool isSelected;
  final String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            '참가비',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: customColorScheme.onSurface2,
                ),
          ),
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
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
                          '참가비',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
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
                          itemCount: 30,
                          itemBuilder: (_, int index) => ListTile(
                            title: Text('${index + 1}만'),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: lightColorScheme.outline),
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.all(padding10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      isSelected ? selectedValue! : '토너 종류',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
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
        ),
      ],
    );
  }
}
