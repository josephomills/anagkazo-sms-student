import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/app/app_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/presentation/theme/app_theme.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.router.current.meta["title"]),
      ),
      body: BlocBuilder<AppBloc, AppState>(
        bloc: getIt<AppBloc>(),
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 32),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                title: const Text("Theme mode"),
                tileColor: Theme.of(context).colorScheme.background,
                trailing: SizedBox(
                  width: 270,
                  child: themeModeSwitch(
                    mode: state.themeMode,
                    context: context,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Row themeModeSwitch(
      {required ThemeMode mode, required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text("Light"),
        Radio<String>(
          value: DarkMode.light.name,
          groupValue: getMode(themeMode: mode).name,
          onChanged: (value) => getIt<AppBloc>().add(AppEvent.themeModeToggled(
              themeMode: getThemeMode(value: value!))),
        ),
        const Text("Dark"),
        Radio<String>(
          value: DarkMode.dark.name,
          groupValue: getMode(themeMode: mode).name,
          onChanged: (value) => getIt<AppBloc>().add(
            AppEvent.themeModeToggled(themeMode: getThemeMode(value: value!)),
          ),
        ),
        const Text("System"),
        Radio<String>(
          value: DarkMode.system.name,
          groupValue: getMode(themeMode: mode).name,
          onChanged: (value) => getIt<AppBloc>().add(
            AppEvent.themeModeToggled(themeMode: getThemeMode(value: value!)),
          ),
        ),
      ],
    );
  }

  Container flexThemeModeSwitch(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      child: FlexThemeModeSwitch(
        labelDark: "Dark",
        labelLight: "Light",
        labelSystem: "System",
        themeMode: ThemeMode.dark,
        onThemeModeChanged: (mode) {},
        flexSchemeData: FlexSchemeData(
          name: "rosewood",
          description: "rosewood",
          light: FlexSchemeColor.from(
            primary: AppTheme.light.colorScheme.primary,
            primaryContainer: AppTheme.light.colorScheme.primaryContainer,
            secondary: AppTheme.light.colorScheme.secondary,
            secondaryContainer: AppTheme.light.colorScheme.secondaryContainer,
            tertiary: AppTheme.light.colorScheme.tertiary,
            tertiaryContainer: AppTheme.light.colorScheme.tertiaryContainer,
            brightness: AppTheme.light.brightness,
            appBarColor: AppTheme.light.appBarTheme.backgroundColor,
            error: AppTheme.light.colorScheme.error,
            errorContainer: AppTheme.light.colorScheme.errorContainer,
            swapOnMaterial3: true,
          ),
          dark: FlexSchemeColor.from(
            primary: AppTheme.dark.colorScheme.primary,
            primaryContainer: AppTheme.dark.colorScheme.primaryContainer,
            secondary: AppTheme.dark.colorScheme.secondary,
            secondaryContainer: AppTheme.dark.colorScheme.secondaryContainer,
            tertiary: AppTheme.dark.colorScheme.tertiary,
            tertiaryContainer: AppTheme.dark.colorScheme.tertiaryContainer,
            brightness: AppTheme.dark.brightness,
            appBarColor: AppTheme.dark.appBarTheme.backgroundColor,
            error: AppTheme.dark.colorScheme.error,
            errorContainer: AppTheme.dark.colorScheme.errorContainer,
            swapOnMaterial3: true,
          ),
        ),
      ),
    );
  }
}

DarkMode getMode({required ThemeMode themeMode}) {
  switch (themeMode) {
    case ThemeMode.dark:
      return DarkMode.dark;
    case ThemeMode.light:
      return DarkMode.light;
    case ThemeMode.system:
    default:
      return DarkMode.system;
  }
}

ThemeMode getThemeMode({required String value}) {
  switch (value) {
    case "dark":
      return ThemeMode.dark;
    case "light":
      return ThemeMode.light;
    case "system":
    default:
      return ThemeMode.system;
  }
}

enum DarkMode { light, dark, system }
