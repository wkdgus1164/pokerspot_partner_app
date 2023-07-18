import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum GuestType {
  vip('vip'),
  common('common'),
  black('black'),
  ;

  const GuestType(this.name);

  final String name;
}

class GuestListItem extends StatelessWidget {
  const GuestListItem({
    super.key,
    this.originalNickname,
    required this.latestNickname,
    required this.guestType,
    required this.latestVisitedPlace,
    required this.latestVisitedDate,
    required this.onEditButtonPressed,
  });

  final String? originalNickname;
  final String latestNickname;
  final GuestType guestType;
  final String latestVisitedPlace;
  final String latestVisitedDate;
  final Function() onEditButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Icon(
                    Icons.person_rounded,
                    size: 48,
                    color: customColorScheme.onSurface3,
                  ),
                ),
                const SizedBox(width: padding10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            latestNickname,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: customColorScheme.onSurface1,
                                ),
                          ),
                          if (originalNickname != null) ...[
                            const SizedBox(width: 4),
                            Flexible(
                              child: Text(
                                '($originalNickname)',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: customColorScheme.onSurface3,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                          if (guestType == GuestType.vip) ...[
                            const SizedBox(width: 4),
                            Text(
                              '단골손님',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: lightColorScheme.primary,
                                  ),
                            ),
                          ],
                          if (guestType == GuestType.black) ...[
                            const SizedBox(width: 4),
                            Text(
                              '블랙리스트',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: lightColorScheme.error,
                                  ),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '마지막 방문일: $latestVisitedDate ($latestVisitedPlace)',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: customColorScheme.onSurface4,
                                ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: padding16),
          IconButton(
            icon: SvgPicture.asset(Assets.edit.path),
            onPressed: onEditButtonPressed,
          ),
        ],
      ),
    );
  }
}
