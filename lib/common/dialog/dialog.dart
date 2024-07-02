import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.content,
    this.onConfirm,
    required this.confirmText,
    this.onCancel,
    this.cancelText,
  });

  final String title;
  final String content;
  final VoidCallback? onConfirm;
  final String confirmText;
  final VoidCallback? onCancel;
  final String? cancelText;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorGrey20,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: colorGrey40,
                  ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (onCancel != null && cancelText != null) ...[
                  if (Platform.isAndroid) ...[
                    TextButton(
                      onPressed: onCancel,
                      child: Text(
                        cancelText!,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorGrey70,
                                ),
                      ),
                    ),
                  ],
                  if (Platform.isIOS) ...[
                    CupertinoDialogAction(
                      onPressed: onCancel,
                      child: Text(
                        cancelText!,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorGrey70,
                                ),
                      ),
                    ),
                  ],
                ],
                if (Platform.isAndroid) ...[
                  TextButton(
                    onPressed: onConfirm,
                    child: Text(
                      confirmText,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorBrand50,
                          ),
                    ),
                  ),
                ],
                if (Platform.isIOS) ...[
                  CupertinoDialogAction(
                    onPressed: onConfirm,
                    child: Text(
                      confirmText,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorBrand50,
                          ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
