import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:student/presentation/core/router.core.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final isLoggedIn = FirebaseAuth.instance.currentUser != null;
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
