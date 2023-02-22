import 'package:flutter/material.dart';

/// Dynamic implementation of Material [SnackBar]
SnackBar snackBarWidget({
  required String text,
  required BuildContext context,
  SnackBarType type = SnackBarType.regular,
  SnackBarAction? action,
}) {
  return SnackBar(
    content: Text(
      text,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: getTextColor(type),
          ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      maxLines: 2,
    ),
    backgroundColor: getBackgroundColor(type),
    action: action,
    padding: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    behavior: SnackBarBehavior.floating,
  );
}

Color getBackgroundColor(SnackBarType type) {
  switch (type) {
    case SnackBarType.error:
      return Colors.redAccent;
    case SnackBarType.success:
      return Colors.greenAccent;
    default:
      return Colors.blueGrey;
  }
}

Color getTextColor(SnackBarType type) {
  switch (type) {
    case SnackBarType.error:
    case SnackBarType.success:
      return Colors.black87;
    default:
      return Colors.white;
  }
}

enum SnackBarType { success, error, regular }
