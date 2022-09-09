import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class PhoneVerificationPageFF extends StatelessWidget {
  const PhoneVerificationPageFF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhoneInputScreen(
      // headerBuilder: headerIcon(Icons.phone),
      actions: [
        SMSCodeRequestedAction(
          (context, action, flowKey, phone) {
            // AutoRouter.of(context).push(
            //   OtpRoute(
            //     action: action!,
            //     flowKey: flowKey,
            //     phone: phone,
            //   ),
            // );
          },
        ),
      ],
    );
  }
}
