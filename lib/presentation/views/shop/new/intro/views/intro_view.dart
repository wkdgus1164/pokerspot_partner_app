import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';

class ShopNewIntroView extends StatefulWidget {
  const ShopNewIntroView({Key? key}) : super(key: key);

  @override
  State<ShopNewIntroView> createState() => _ShopNewIntroViewState();
}

class _ShopNewIntroViewState extends State<ShopNewIntroView> {
  @override
  void initState() {
    super.initState();

    locator<CreateStoreProvider>().clear();
  }

  @override
  Widget build(BuildContext context) {
    onGuideButtonPressed() {
      context.pushNamed(ShopRoutes.newGuide.path);
    }

    onAddNewButtonPressed() {
      context.pushNamed(ShopRoutes.processBusiness.path);
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  color: Colors.black,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(Assets.newAddShop.path),
                const SizedBox(height: padding10),
                Text(
                  '매장 등록이\n처음이신가요?',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: padding10),
                Text(
                  '아래의 안내 가이드를 확인한 뒤\n매장 등록을 진행해주세요.',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: padding32),
                OutlinedButton(
                  onPressed: onGuideButtonPressed,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors.grey,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '매장 등록 안내 가이드 보기',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.black),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.grey.shade400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(padding16),
              child: Padding(
                padding: const EdgeInsets.only(bottom: padding16),
                child: CustomFilledButton(
                  text: '신규 매장 등록하기',
                  theme: CustomFilledButtonTheme.primary,
                  onPressed: onAddNewButtonPressed,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
