import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class RegisterPageFF extends StatelessWidget {
  const RegisterPageFF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterScreen(
      auth: FirebaseAuth.instance,
    );
  }
}
