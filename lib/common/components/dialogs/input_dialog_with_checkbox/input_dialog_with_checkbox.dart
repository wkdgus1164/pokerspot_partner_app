// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/base_dialog.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_button_section.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_cancel_button.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/buttons/base_dialog_confirm_button.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/base/templates/title/base_dialog_title_section.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

class InputDialogWithCheckbox extends StatefulWidget {
  final Widget icon;
  final String title;
  final bool isChecked;
  final String checkboxLabel;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;
  final Function()? onCheckboxChanged;

  const InputDialogWithCheckbox({
    super.key,
    this.icon = const Icon(Icons.info_outline_rounded),
    this.title = "",
    this.onConfirm,
    this.onCancel,
    this.isChecked = false,
    this.checkboxLabel = "",
    required this.onCheckboxChanged,
  });

  @override
  State<InputDialogWithCheckbox> createState() => _PickerDialogState();
}

class _PickerDialogState extends State<InputDialogWithCheckbox> {
  Widget get icon => widget.icon;
  String get title => widget.title;
  bool get isChecked => widget.isChecked;
  String get checkboxLabel => widget.checkboxLabel;

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: _TitleSection(),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: padding24,
              vertical: padding16,
            ),
            child: CustomTextField(
              hint: '숫자로 입력',
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLines: 1,
              maxLength: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding24),
            child: Row(
              children: [
                CustomCheckbox(
                  value: isChecked,
                  onChanged: widget.onCheckboxChanged,
                ),
                const SizedBox(width: padding10),
                Text(
                  checkboxLabel,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: customColorScheme.onSurface2,
                      ),
                ),
              ],
            ),
          ),
          _ButtonSection(),
        ],
      ),
    );
  }

  Widget _TitleSection() {
    if (title.isEmpty) return Container();

    return BaseDialogTitleSection(icon: icon, title: title);
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
