import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:student/application/core/router.core.gr.dart';

class PhoneVerificationPage extends StatelessWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhoneInputScreen(
      // headerBuilder: headerIcon(Icons.phone),
      actions: [
        SMSCodeRequestedAction(
          (context, action, flowKey, phone) {
            AutoRouter.of(context).push(
              OtpRoute(
                action: action!,
                flowKey: flowKey,
                phone: phone,
              ),
            );
          },
        ),
      ],
    );
  }
}
