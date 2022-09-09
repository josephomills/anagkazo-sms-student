import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/auth/login/login_bloc.dart';
import 'package:student/application/core/getIt.core.dart';
import 'package:student/presentation/widgets/textFormField.widget.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
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
            children: [
              const SizedBox(height: 30),
              Image.asset(
                "assets/icon/logo.png",
                height: 50,
              ),
              const SizedBox(height: 30),
              TextFormFieldWidget(
                text: state.username,
                label: "Username",
                validator: (text) {},
                onChanged: (text) {},
                prefixIcon: const Icon(Icons.person),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: this,
    );
  }
}
