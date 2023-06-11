// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/base_dialog.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_button_section.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_confirm_button.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/content/content_section.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/title/base_dialog_title_section.dart';

class MyHttpErrorDialog extends StatefulWidget {
  final String errorText;
  final VoidCallback onConfirm;

  const MyHttpErrorDialog({
    super.key,
    this.errorText = "",
    required this.onConfirm,
  });

  @override
  State<MyHttpErrorDialog> createState() => _MyHttpErrorDialogState();
}

class _MyHttpErrorDialogState extends State<MyHttpErrorDialog> {
  String get errorText => widget.errorText;

  @override
  Widget build(BuildContext context) {
    Logger().e(errorText);

    return BaseDialog(
      title: _TitleSection(),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContentSection(),
          _ErrorSection(),
          const SizedBox(height: 20),
          _ButtonSection()
        ],
      ),
    );
  }

  Widget _TitleSection() {
    return const BaseDialogTitleSection(
      icon: Icon(Icons.wifi_off_outlined),
      title: "연결 실패",
    );
  }

  Widget _ContentSection() {
    return const BaseDialogContentSection(
      content: "서버와 연결에 실패했어요.\n잠시후 다시 시도해주세요.",
    );
  }

  Widget _ErrorSection() {
    if (errorText.isEmpty) return Container();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        "( $errorText )",
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey.shade500.withOpacity(0.8),
        ),
      ),
    );
  }

  Widget _ButtonSection() {
    handleConfirm() {
      Navigator.pop(context);
      widget.onConfirm();
    }

    return BaseDialogButtonSection(
      child: Row(
        children: [
          BaseDialogConfirmButton(
            onConfirm: handleConfirm,
          ),
        ],
      ),
    );
  }
}
