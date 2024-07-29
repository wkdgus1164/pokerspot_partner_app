import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class StoreBusinessInfoVac extends StatelessWidget {
  const StoreBusinessInfoVac({
    super.key,
    required this.businessName,
    required this.ceoName,
    required this.address,
    required this.industry,
    required this.businessType,
  });

  final String businessName;
  final String ceoName;
  final String address;
  final String industry;
  final String businessType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '사업자 정보',
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              border: Border.all(color: colorGrey90),
            ),
            child: Column(
              children: [
                _buildRow(title: '상호명', value: businessName),
                const Divider(),
                _buildRow(title: '대표자명', value: ceoName),
                const Divider(),
                _buildRow(title: '주소', value: address),
                const Divider(),
                _buildRow(title: '업종', value: industry),
                const Divider(),
                _buildRow(title: '업태', value: businessType),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildRow({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            title,
            style: textTheme.labelLarge!.copyWith(
              color: colorGrey60,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: textTheme.bodyMedium!.copyWith(
              color: colorGrey20,
            ),
          ),
        ],
      ),
    );
  }
}
