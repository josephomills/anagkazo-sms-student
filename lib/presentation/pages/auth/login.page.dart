import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.onLogin}) : super(key: key);

  final void Function(bool isLoggedIn) onLogin;

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      auth: FirebaseAuth.instance,
      showAuthActionSwitch: true,
      actions: [
        AuthStateChangeAction<SignedIn>(
          (context, state) {
            if (state.user != null) {
              onLogin.call(true);
            }
          },
        ),
      ],
      subtitleBuilder: (constext, action) {
        String subtitle = "";
        switch (action) {
          case AuthAction.signIn:
            subtitle = "Welcome Student! Sign in to continue.";
            break;
          case AuthAction.signUp:
            subtitle = "Welcome Student! Sign up for an account.";
            break;
          default:
        }
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(subtitle),
        );
      },
      headerBuilder: (context, constraints, shrinkOffset) {
        return Image.asset(
          'assets/icon/logo.png',
        );
      },
      footerBuilder: (context, action) {
        String footer = "";
        switch (action) {
          case AuthAction.signIn:
            footer = "By signing in, you agree to our terms and conditions.";
            break;
          case AuthAction.signUp:
            footer = "By registering, you agree to our terms and conditions.";
            break;
          default:
        }
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(footer),
        );
      },
    );
  }
}
