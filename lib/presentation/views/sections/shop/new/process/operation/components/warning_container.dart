import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/operation/components/warning.dart';

class WarningContainer extends StatelessWidget {
  const WarningContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.info_outline_rounded,
                size: 20,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  '신규 매장 등록 시 꼭 확인해주세요!',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: customColorScheme.onSurface2,
                      ),
                ),
              ),
            ],
          ),
          const ShopProcessOperationWarning(),
          Padding(
            padding: const EdgeInsets.only(
              left: 6,
              bottom: padding10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 4),
                Text(
                  '·',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: customColorScheme.onSurface4,
                      ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    '그 이외 포커스팟은 홀덤펍의 정보 중개자로서, 해당 서비스 제공의 당사자가 아님을 고지하고 서비스의 예약 이용 및 환불, 불법적인 행위와 관련된 의무와 책임은 각 서비스 제공자에게 있습니다.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: customColorScheme.onSurface3,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
