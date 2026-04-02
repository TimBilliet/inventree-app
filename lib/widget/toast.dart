import "package:fluttertoast/fluttertoast.dart";
import "package:flutter/material.dart";
import "package:inventree/helpers.dart";

/*
 * Display a android toast message
 */
void showToast(
    String text, {
      IconData? icon,
      Function()? onAction,
      bool? success,
      String? actionText,
    }) {
  debug("showSnackIcon: '${text}'");
  // Escape quickly if we do not have context
  if (!hasContext()) return;

  Color backgroundColor = Colors.deepOrange;

  // Make some selections based on the "success" value
  if (success == true) backgroundColor = Colors.lightGreen;

  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: backgroundColor,
    textColor: Colors.white,
    fontSize: 14.0,
  );
}