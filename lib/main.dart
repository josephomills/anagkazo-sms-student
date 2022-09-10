import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:student/application/core/authGard.core.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:student/infrastructure/core/parse.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Allow the splash screen to stay a little longer until current user has been obtained
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Injectable
  initInjectable(Environment.prod);

  // Initialize Parse Server (Back4App)
  initParse();

  runApp(AnagkazoSMSStudent());
}

class AnagkazoSMSStudent extends StatelessWidget {
  AnagkazoSMSStudent({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ABMTC Student App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        defaultScale: true,
      ),
      locale: const Locale('en'),
      localizationsDelegates: const [],
    );
  }
}
