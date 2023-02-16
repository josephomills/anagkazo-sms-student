import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/config/auth.gard.core.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:student/core/config/injectable.core.dart';
import 'package:student/core/config/router.core.gr.dart';
import 'package:student/firebase_options.dart';
import 'package:student/infrastructure/core/parseSDK.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Allow the splash screen to stay a little longer until current user has been obtained
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Injectable
  initInjectable(Environment.prod);

  //initialize Firebase app
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Set unlimited cache
  FirebaseFirestore.instance.settings = const Settings(
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
    persistenceEnabled: true,
  );

  // Initialize Parse Server (Back4App)
  await initParse();

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
        buttonTheme: const ButtonThemeData(
          height: 60,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(250, 50),
            textStyle: const TextStyle(
              fontSize: 24,
            ),
            elevation: 2,
            alignment: Alignment.center,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
    );
  }
}
