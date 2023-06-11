// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/base_dialog.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_button_section.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_cancel_button.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_confirm_button.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/content/content_section.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/title/base_dialog_title_section.dart';

class SelectionDialog extends StatefulWidget {
  final Widget icon;
  final String title;
  final String content;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

  const SelectionDialog({
    super.key,
    this.icon = const Icon(Icons.info_outline),
    this.title = "",
    this.content = "",
    this.onConfirm,
    this.onCancel,
  });

  @override
  State<SelectionDialog> createState() => _SelectionDialogState();
}

class _SelectionDialogState extends State<SelectionDialog> {
  Widget get icon => widget.icon;
  String get title => widget.title;
  String get content => widget.content;

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: _TitleSection(),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContentSection(),
          const SizedBox(height: 20),
          _ButtonSection()
        ],
      ),
    );
  }

  Widget _TitleSection() {
    if (title.isEmpty) return Container();

    return BaseDialogTitleSection(
      icon: icon,
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

    handleCancel() {
      Navigator.pop(context);
    }

    return BaseDialogButtonSection(
      child: Row(
        children: [
          BaseDialogCancelButton(
            onCancel: handleCancel,
          ),
          const SizedBox(width: 16),
          BaseDialogConfirmButton(
            onConfirm: handleConfirm,
          ),
        ],
      ),
    );
  }
}
