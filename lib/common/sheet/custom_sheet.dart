import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/sheet/sheet_data.dart';

class CustomSheet extends StatelessWidget {
  const CustomSheet({
    super.key,
    required this.items,
    this.cancelText = '취소',
  });

  final List<CustomSheetModel> items;
  final String cancelText;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: items
            .map(
              (item) => ListTile(
                leading: item.icon,
                title: Text(item.title),
                subtitle: Text(item.subtitle),
                onTap: item.onTap,
              ),
            )
            .toList(),
      );
    }

    return CupertinoActionSheet(
      actions: items
          .map(
            (item) => CupertinoActionSheetAction(
              onPressed: item.onTap,
              child: Text(item.title),
            ),
          )
          .toList(),
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(cancelText),
      ),
    );
  }
}
