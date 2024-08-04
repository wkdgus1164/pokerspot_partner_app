import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/sheet/custom_sheet.dart';
import 'package:pokerspot_partner_app/common/sheet/sheet_data.dart';

extension BuildContextCustomSheetExtension on BuildContext {
  void showCustomBottomSheet({
    required List<CustomSheetModel> items,
  }) {
    if (Platform.isAndroid) {
      showModalBottomSheet(
        context: this,
        useSafeArea: true,
        builder: (_) {
          return CustomSheet(items: items);
        },
      );
    }

    if (Platform.isIOS) {
      showCupertinoModalPopup(
        context: this,
        builder: (_) {
          return CustomSheet(items: items);
        },
      );
    }
  }
}
