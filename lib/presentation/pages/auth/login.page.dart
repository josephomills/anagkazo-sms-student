import 'package:flutter/material.dart';
import 'package:student/application/auth/login/login_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key, required this.onLogin}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final void Function(bool isLoggedIn) onLogin;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: const [],
          ),
        );
      },
    );
  }
}
