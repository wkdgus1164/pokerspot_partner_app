// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/base_dialog.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/buttons/base_dialog_button_section.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/buttons/base_dialog_confirm_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/content/content_section.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/title/base_dialog_title_section.dart';

class InformationDialog extends StatefulWidget {
  final String title;
  final String content;
  final VoidCallback? onConfirm;
  final String confirmText;

  const InformationDialog({
    super.key,
    this.title = "안내",
    this.content = "",
    this.onConfirm,
    this.confirmText = "확인",
  });

  @override
  State<InformationDialog> createState() => _InformationDialogState();
}

class _InformationDialogState extends State<InformationDialog> {
  String get title => widget.title;
  String get content => widget.content;

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: _TitleSection(),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: lightColorScheme.outline,
            height: 1,
            thickness: 1,
          ),
          _ContentSection(),
          _ButtonSection(),
        ],
      ),
    );
  }

  Widget _TitleSection() {
    if (title.isEmpty) return Container();

    return BaseDialogTitleSection(
      icon: const Icon(Icons.info_outline),
      title: title,
    );
  }

  Widget _ContentSection() {
    if (content.isEmpty) return Container();

    return BaseDialogContentSection(content: content);
  }

  Widget _ButtonSection() {
    if (widget.onConfirm == null) return Container();

    handleConfirm() {
      Navigator.pop(context);
      widget.onConfirm?.call();
    }

    return BaseDialogButtonSection(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BaseDialogConfirmButton(
            onConfirm: handleConfirm,
            text: widget.confirmText,
          ),
        ],
      ),
    );
  }
}
