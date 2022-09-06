import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:flutterfire_ui/i10n.dart';
import 'package:injectable/injectable.dart';
import 'package:student/presentation/core/auth_gard.core.dart';
import 'package:student/presentation/core/locator.core.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:student/firebase_options.dart';
import 'package:student/presentation/core/router.core.gr.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Allow the splash screen to stay a little longer until current user has been obtained
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  setupLocator(Environment.prod);
  //initialize Firebase app
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Set unlimited cache
  FirebaseFirestore.instance.settings = const Settings(
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
    persistenceEnabled: true,
  );
  // FlutterFire UI config
  FlutterFireUIAuth.configureProviders([
    const EmailProviderConfiguration(),
  ]);

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
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        defaultScale: true,
      ),
      locale: const Locale('en'),
      localizationsDelegates: [
        FlutterFireUILocalizations.withDefaultOverrides(
            const DefaultLocalizations()),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FlutterFireUILocalizations.delegate,
      ],
    );
  }
}
