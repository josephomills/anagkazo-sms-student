import 'package:auto_route/auto_route.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/presentation/navigation/router.core.gr.dart';
import 'package:student/domain/auth/auth.facade.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final isLoggedIn = await getIt<AuthFacade>().hasUserLoggedIn();
    if (isLoggedIn) {
      resolver.next();
    } else {
      router.push(LoginRoute(onLogin: (signedIn) {
        resolver.next(signedIn);
        if (signedIn) {
          router.removeLast(); // Remove login screen from stack
        }
      }));
    }
  }
}
