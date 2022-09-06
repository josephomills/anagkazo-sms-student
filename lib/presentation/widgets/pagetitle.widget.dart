import 'package:flutter/material.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 44,
          color: Colors.black87,
        ),
      ),
    );
  }
}
