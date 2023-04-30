import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/application/app/app_bloc.dart';
import 'package:student/infrastructure/parse.core.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/presentation/navigation/autoroute.dart';
import 'package:student/firebase_options.dart';
import 'package:student/presentation/theme/app_theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Allow the splash screen to stay a little longer until current user has been obtained
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await dotenv.load();

  // Initialize Parse Server (Back4App)
  await initParse();

  // Set glocal localization for Moments to US English
  Moment.setGlobalLocalization(MomentLocalizations.enUS());

  //initialize Firebase app
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Set unlimited cache
  FirebaseFirestore.instance.settings = const Settings(
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
    persistenceEnabled: true,
  );

  // Initialise Injectable and GetIt
  initInjectable(Environment.prod);

  runApp(AnagkazoSMSStudent());
}

class AnagkazoSMSStudent extends StatelessWidget {
  AnagkazoSMSStudent({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: getIt<AppBloc>(),
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Student App',
          themeMode: state.themeMode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            defaultScale: true,
          ),
          locale: const Locale('en'),
        );
      },
    );
  }
}
