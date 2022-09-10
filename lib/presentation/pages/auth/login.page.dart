import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/auth/login/login_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/auth/auth.validator.dart';
import 'package:student/presentation/themes/context.ext.dart';
import 'package:student/presentation/widgets/textFormField.widget.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  LoginPage({Key? key, required this.onLogin}) : super(key: key);

  final _formKey = getIt<GlobalKey<FormState>>();
  final void Function(bool isLoggedIn) onLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        bloc: context.bloc<LoginBloc>(),
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((f) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      f.maybeMap(
                        serverError: (e) => e.message!,
                        invalidUsernameAndPasswordCombination: (e) =>
                            "Please enter a valid username &password combination.",
                        sessionMissing: (e) => "Session missing",
                        orElse: () => "Something went wrong. Please try again.",
                      ),
                    )));
                  }, (userModel) {
                    // context.router.push(AttendanceRoute());
                  }));
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            autovalidateMode: state.validateFields
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            onWillPop: () => Future.value(false),
            child: ListView(
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
                  validator: getIt<AuthValidator>().validateUsername,
                  onChanged: (text) => context
                      .bloc<LoginBloc>()
                      .add(UsernameChanged(username: text)),
                  prefixIcon: const Icon(Icons.person),
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  text: state.password,
                  label: "Password",
                  validator: getIt<AuthValidator>().validatePassword,
                  onChanged: (text) => context
                      .bloc<LoginBloc>()
                      .add(PasswordChanged(password: text)),
                  prefixIcon: const Icon(Icons.lock),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () =>
                      context.bloc<LoginBloc>().add(const LoginButtonPressed()),
                  child: const Text("Login"),
                ),
              ],
            ),
          );
        },
      ),
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
