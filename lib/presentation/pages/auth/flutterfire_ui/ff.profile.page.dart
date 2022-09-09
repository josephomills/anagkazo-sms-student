import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class ProfilePageFF extends StatelessWidget {
  const ProfilePageFF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      actions: [
        SignedOutAction((context) {
          final router = AutoRouter.of(context);
          // router.pushAndPopUntil(
          //     LoginRoute(
          //       onLogin: (_) => router.popAndPush(
          //         const AttendanceRoute(),
          //       ),
          //     ),
          //     predicate: (route) => false);
        }),
        // VerifyPhoneAction(
        //   (context, action) =>
        //       AutoRouter.of(context).push(const PhoneVerificationRoute()),
        // ),
      ],
    );
  }
}
