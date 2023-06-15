import 'package:flutter/material.dart';

/// Dynamic implementation of Material [SnackBar]
SnackBar snackBarWidget({
  required String text,
  required BuildContext context,
  SnackBarType type = SnackBarType.regular,
  SnackBarAction? action,
  bool showCloseIcon = true,
}) {
  return SnackBar(
    content: Text(
      text,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: getTextColor(type: type, context: context),
          ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      maxLines: 2,
    ),
    backgroundColor: getBackgroundColor(type: type, context: context),
    action: action,
    padding: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    behavior: SnackBarBehavior.floating,
    showCloseIcon: showCloseIcon,
  );
}

Color getBackgroundColor({
  required SnackBarType type,
  required BuildContext context,
}) {
  switch (type) {
    case SnackBarType.error:
      return Theme.of(context).colorScheme.error;
    case SnackBarType.regular:
    default:
      return Theme.of(context).colorScheme.tertiary;
  }
}

Color getTextColor({
  required SnackBarType type,
  required BuildContext context,
}) {
  switch (type) {
    case SnackBarType.error:
      return Theme.of(context).colorScheme.onError;
    case SnackBarType.regular:
    default:
      return Theme.of(context).colorScheme.onTertiary;
  }
}

enum SnackBarType { error, regular }
