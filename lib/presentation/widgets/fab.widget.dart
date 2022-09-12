import 'package:flutter/material.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      child: const Icon(Icons.qr_code),
      onPressed: () {},
    );
  }
}
