import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({
  required BuildContext context,
  required String message,
  int? milliseconds,
  String? buttonText,
  VoidCallback? onTap,
}) {
  final toast = FToast();
  toast.removeCustomToast();
  toast.removeQueuedCustomToasts();
  toast.init(context);
  toast.showToast(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          width: 340,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Colors.black),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            softWrap: true,
          )),
      toastDuration: Duration(milliseconds: milliseconds ?? 2000));
}
