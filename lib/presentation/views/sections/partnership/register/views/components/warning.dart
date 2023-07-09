import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class PartnershipRegisterWarning extends StatelessWidget {
  const PartnershipRegisterWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline_rounded,
                color: customColorScheme.onSurface3,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: SizedBox(
                  child: Text(
                    '꼭 확인해주세요!',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: customColorScheme.onSurface2,
                        ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  '제휴 신청 상세 안내',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '영업임시중지 또는 자발적인 영업 중단 시 제휴 기간을 연장할 수 없습니다.\n리스트 노출은 거리순, 추천순 정렬에만 적용되며,  그 외 서비스 정렬 조건에는 적용되지 않습니다.\n제휴는 구매 완료 즉시 서비스에 적용되며,  제휴가 적용된 이후 중도 해지 시 환불이 불가합니다.\n회원이 이용약관 및 운영정책을 위반하여 판매중단, 서비스 이용 제한 및 기타 조치를 받을 경우, 제휴 기간은 연장되지 않으며 환불이 불가합니다.',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  '결제 및 영수증 안내',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '무통장입금 수단으로 발급받은 가상계좌는 12시간 동안 유효하며, 입금기한 내 미입금 시 제휴 신청이 자동으로 취소됩니다.\n제휴 구매 비용에 대한 영수증은 결제 수단에 따라 “카드 전표” 또는 “현금영수증”으로 발행 받을 수 있습니다',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
