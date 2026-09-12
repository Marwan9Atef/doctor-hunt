
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/router/app_config.dart';
import 'package:doctor_hunt/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      child: Builder(
        builder: (context) => MaterialApp.router(
          locale: TranslationProvider.of(context).flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          title: "DoctorHunt",
          routerConfig: AppConfig.routes,
          theme: AppTheme.lightMode,
          darkTheme: AppTheme.darkMode,
          themeMode: ThemeMode.light,
        ),
      ),
    );
  }
}
