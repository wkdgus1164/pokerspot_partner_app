import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/ment/providers/ment_form_data.dart';

class StoreMentFormView extends StatefulHookConsumerWidget {
  const StoreMentFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreMentFormViewState();
}

class _StoreMentFormViewState extends ConsumerState<StoreMentFormView> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: _handleChange,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: colorGrey80,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: colorGrey80,
          ),
        ),
        hintText: '매장 소개 문구를 입력해주세요',
      ),
      maxLines: null,
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(storeMentFormDataProvider.notifier).setMent('');
    } else {
      ref.read(storeMentFormDataProvider.notifier).setMent(v);
    }
  }
}
