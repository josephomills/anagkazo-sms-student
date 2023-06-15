import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/widgets/button.widget.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      builder: (context, state) {
        return Container(
          height: 300,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Icon(
                LineAwesomeIcons.alternate_sign_out,
                size: 60,
              ),
              const SizedBox(height: 16),
              Text(
                "Logout?",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 16),
              const Text("Are you sure you want to logout?"),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    isLoading: false,
                    label: "Cancel",
                    widthFactor: 0.35,
                    onTap: state.isLoading ? null : () => context.router.pop(),
                  ),
                  const SizedBox(width: 16),
                  ButtonWidget(
                    isLoading: state.isLoading,
                    label: "Yes, logout",
                    widthFactor: 0.35,
                    onTap: () {
                      // Logout
                      getIt<AuthBloc>().add(const AuthEvent.loggedOut());
                      // Close bottom sheet & go to login
                      context.router.replaceAll([LoginRoute()]);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
