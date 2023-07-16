import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/data/models/store/store_coupon.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/coupon/coupon_card.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/coupon_admin/components/count.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/coupon_admin/components/information.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class CouponAdminView extends StatefulWidget {
  const CouponAdminView({
    super.key,
    required this.coupon,
  });

  final StoreCouponModel coupon;

  @override
  State<CouponAdminView> createState() => _CouponAdminViewState();
}

class _CouponAdminViewState extends State<CouponAdminView> {
  late StoreCouponModel _coupon;
  @override
  void initState() {
    super.initState();

    _coupon = widget.coupon;
  }

  void setCount(bool isPlus) {
    if (isPlus && _coupon.remainAmount == 5 ||
        !isPlus && _coupon.remainAmount == 0) {
      return;
    }
    setState(() {
      _coupon = _coupon
        ..remainAmount = _coupon.remainAmount + (isPlus ? 1 : -1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('쿠폰 설정')),
      body: Column(
        children: [
          // 쿠폰 정보
          Container(
            padding: const EdgeInsets.all(padding16),
            child: CouponCard(
              coupon: widget.coupon,
            ),
          ),
          const CustomDivider(),

          // 남은 개수 조정
          CouponAdminCount(
            lastCount: _coupon.remainAmount,
            onMinusButtonPressed: () {
              setCount(false);
            },
            onPlusButtonPressed: () {
              setCount(true);
            },
          ),
          const CustomDivider(),

          // 코멘트
          const CouponAdminInformation(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(padding16),
            child: CustomFilledButton(
                text: '변경하기',
                onPressed: () async {
                  locator<HomeProvider>().updateCoupon(_coupon).then((value) {
                    if (value) {
                      Navigator.pop(context);
                    } else {
                      showInformationDialog(
                          context: context,
                          title: '변경 실패',
                          content: '변경을 실패했습니다.',
                          onConfirm: () {});
                    }
                  });
                }),
          ),
        ],
      ),
    );
  }
}
