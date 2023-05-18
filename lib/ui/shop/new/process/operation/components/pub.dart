import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class ShopProcessOperationPub extends StatelessWidget {
  const ShopProcessOperationPub({
    super.key,
    required this.asset,
    required this.text,
    required this.isEnabled,
    required this.onTap,
    required this.enabledAsset,
  });

  final String asset;
  final String enabledAsset;
  final String text;
  final bool isEnabled;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    BoxBorder? border(text) {
      switch (text) {
        case "토너펍":
          return Border.all(color: Colors.blue.shade300, width: 2);
        case "링게임펍":
          return Border.all(color: Colors.purple.shade300, width: 2);
        case "기타펍":
          return Border.all(color: Colors.purple.shade300, width: 2);
        default:
          return null;
      }
    }

    return Expanded(
      child: Column(
        children: [
          Column(
            children: [
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(defaultRadius * 2),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius * 2),
                    color: Colors.grey.shade100,
                  ),
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: BorderRadius.circular(defaultRadius * 2),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            defaultRadius * 2,
                          ),
                          border: isEnabled ? border(text) : null,
                        ),
                        child: SvgPicture.asset(
                          isEnabled ? enabledAsset : asset,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(text, style: label),
            ],
          )
        ],
      ),
    );
  }
}
