import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/store_list/list_item.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/data/store_data.dart';

class HomeStore extends StatelessWidget {
  const HomeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: padding10),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            padding16,
            padding16,
            padding10,
            0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('제휴 현황', style: titleLarge.copyWith(color: textColor)),
              const SizedBox(width: 4),
              Text('2', style: titleLarge.copyWith(color: primaryColor)),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: List.generate(
              storeList.length,
              (index) => HomeStoreItem(
                thumbnail: storeList[index].thumbnail,
                title: storeList[index].title,
                isCorporate: storeList[index].isCorporate,
                lastDays: storeList[index].lastDays,
                padding: index == 0
                    ? const EdgeInsets.only(
                        left: padding16,
                        right: padding10,
                        top: padding16,
                        bottom: padding16,
                      )
                    : const EdgeInsets.only(
                        right: padding10,
                        top: padding16,
                        bottom: padding16,
                      ),
                onTap: () {},
              ),
            ),
          ),
        ),
        const SizedBox(height: padding32),
      ],
    );
  }
}
