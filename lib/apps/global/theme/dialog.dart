import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_partner_app/apps/global/theme/typo.dart';

DialogTheme dialogTheme = DialogTheme(
  backgroundColor: Colors.white,
  surfaceTintColor: colorGrey40,
  actionsPadding: const EdgeInsets.all(16),
  titleTextStyle: textTheme.titleLarge!.copyWith(color: colorGrey20),
  contentTextStyle: textTheme.labelLarge!.copyWith(color: colorGrey40),
);
