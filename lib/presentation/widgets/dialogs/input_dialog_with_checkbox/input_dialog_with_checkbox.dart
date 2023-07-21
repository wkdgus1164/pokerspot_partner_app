// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/base_dialog.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/buttons/base_dialog_button_section.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/buttons/base_dialog_cancel_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/buttons/base_dialog_confirm_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/base/templates/title/base_dialog_title_section.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

class InputDialogWithCheckbox extends StatefulWidget {
  final Widget icon;
  final String title;
  final bool isChecked;
  final bool disableOnChecked;
  final String checkboxLabel;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;
  final Function()? onCheckboxChanged;
  final Function(String)? onTextFieldChanged;

  const InputDialogWithCheckbox({
    super.key,
    this.icon = const Icon(Icons.info_outline_rounded),
    this.title = "",
    this.onConfirm,
    this.onCancel,
    this.isChecked = false,
    this.disableOnChecked = false,
    this.checkboxLabel = "",
    required this.onCheckboxChanged,
    this.onTextFieldChanged,
  });

  @override
  State<InputDialogWithCheckbox> createState() => _PickerDialogState();
}

class _PickerDialogState extends State<InputDialogWithCheckbox> {
  Widget get icon => widget.icon;
  String get title => widget.title;
  bool isChecked = false;
  bool get disableOnChecked => widget.disableOnChecked ? isChecked : false;
  String get checkboxLabel => widget.checkboxLabel;

  @override
  void initState() {
    super.initState();

    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: _TitleSection(),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: padding24,
              vertical: padding16,
            ),
            child: CustomTextField(
              hint: '숫자로 입력',
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 3,
              enabled: !disableOnChecked,
              onTextFieldChanged: widget.onTextFieldChanged,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding24),
            child: Row(
              children: [
                CustomCheckbox(
                  value: isChecked,
                  onChanged: () {
                    setState(() {
                      isChecked = !isChecked;
                      Logger.d(disableOnChecked);
                    });
                    widget.onCheckboxChanged?.call();
                  },
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
