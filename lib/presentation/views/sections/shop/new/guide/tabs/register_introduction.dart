import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/guide/components/register_information.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/guide/data/register_information.dart';

class ShopRegisterIntroductionTab extends StatelessWidget {
  const ShopRegisterIntroductionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: padding24,
              horizontal: padding16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '● 사진 등록 안내',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 6),
                Text(
                  '매장 등록을 등록하시기 전 매장 사진 2장~4장을 꼭 준비해주세요!',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
                const SizedBox(height: padding24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.goodPhoto.path,
                          width: MediaQuery.of(context).size.width / 2 - 20,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '좋은 예시',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: lightColorScheme.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '매장 시설과 관련된 사진',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: customColorScheme.onSurface3,
                                  ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.padPhoto.path,
                          width: MediaQuery.of(context).size.width / 2 - 20,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '나쁜 예시',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: lightColorScheme.error,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '매장 시설과 관련없는 사진',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: customColorScheme.onSurface3,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: padding24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '● 매장 정보 등록 안내',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 6),
                Text(
                  '포커스팟 관리 서비스를 이용하기 위해 매장 정보 등록이 필요합니다.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
                const SizedBox(height: padding24),
                Column(
                  children: contentList
                      .map((it) => RegisterInformationCard(model: it))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
