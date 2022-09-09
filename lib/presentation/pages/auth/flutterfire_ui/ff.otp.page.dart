import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class OtpPageFF extends StatelessWidget {
  const OtpPageFF({
    Key? key,
    required this.action,
    required this.phone,
    required this.flowKey,
  }) : super(key: key);

  final AuthAction action;
  final String phone;
  final Object flowKey;

  @override
  Widget build(BuildContext context) {
    return SMSCodeInputScreen(
      flowKey: flowKey,
      action: action,
    );
  }
}
