import 'package:doctor_hunt/core/router/app_config.dart';
import 'package:doctor_hunt/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "DoctorHunt",
      routerConfig: AppConfig.routes,
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: ThemeMode.light,
    );
  }
}
