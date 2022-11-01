import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:student/application/auth/login/login_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/domain/auth/auth.validator.dart';
import 'package:student/presentation/themes/context.ext.dart';
import 'package:student/presentation/widgets/forms/textFormField.widget.dart';

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
              () {}, // do nothing for none()
              (either) => either.fold((f) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      f.maybeMap(
                        serverError: (e) => e.message!,
                        invalidUsernameAndPasswordCombination: (e) =>
                            "Please enter a valid username & password combination.",
                        sessionMissing: (e) => "Session missing",
                        orElse: () => "Something went wrong. Please try again.",
                      ),
                    )));
                  }, (userModel) {
                    context.router.replace(const HomeRoute());
                  }));
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            autovalidateMode: state.validateFields
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              children: [
                const SizedBox(height: 60),
                Image.asset(
                  "assets/icon/logo.png",
                  height: 200,
                ),
                const SizedBox(height: 60),
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
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: state.isLoading
                      ? null
                      : () {
                          context
                              .bloc<LoginBloc>()
                              .add(const LoginButtonPressed());
                        },
                  child: state.isLoading
                      ? const SpinKitThreeBounce(
                          color: Colors.blue,
                          size: 40,
                        )
                      : const Text("Login"),
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
