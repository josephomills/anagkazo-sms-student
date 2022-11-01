import 'package:flutter/material.dart';

class QuickActionWidget extends StatelessWidget {
  const QuickActionWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        leading: icon,
        title: Text(title),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onTap: onTap,
      ),
    );
  }
}
