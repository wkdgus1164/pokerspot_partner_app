import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum FocusedOn {
  newData('newData'),
  completeData('completeData'),
  ;

  const FocusedOn(this.path);

  final String path;
}

class ReservationCountTab extends StatelessWidget {
  const ReservationCountTab({
    super.key,
    required this.newData,
    required this.completeData,
    required this.focusedOn,
  });

  final int newData;
  final int completeData;
  final FocusedOn focusedOn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: padding16),
                decoration: BoxDecoration(
                  color: focusedOn == FocusedOn.newData
                      ? customColorScheme.surfaceContainer1
                      : customColorScheme.surfaceContainer2,
                ),
                child: Column(
                  children: [
                    Text(
                      newData.toString(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: focusedOn == FocusedOn.newData
                                ? customColorScheme.onSurfaceContainer1
                                : customColorScheme.onSurface4,
                          ),
                    ),
                    const SizedBox(height: padding10),
                    Text(
                      '처리할 예약',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: focusedOn == FocusedOn.newData
                                ? customColorScheme.onSurfaceContainer1
                                : customColorScheme.onSurface4,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: padding16),
                decoration: BoxDecoration(
                  color: focusedOn == FocusedOn.completeData
                      ? customColorScheme.surfaceContainer1
                      : customColorScheme.surfaceContainer2,
                ),
                child: Column(
                  children: [
                    Text(
                      completeData.toString(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: focusedOn == FocusedOn.completeData
                                ? customColorScheme.onSurfaceContainer1
                                : customColorScheme.onSurface4,
                          ),
                    ),
                    const SizedBox(height: padding10),
                    Text(
                      '접수 완료',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: focusedOn == FocusedOn.completeData
                                ? customColorScheme.onSurfaceContainer1
                                : customColorScheme.onSurface4,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
