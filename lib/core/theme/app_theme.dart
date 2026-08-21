import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightMode = ThemeData(
scaffoldBackgroundColor: AppColors.colorWhite,
appBarTheme: AppBarTheme(
centerTitle: true,
)
  );
    static final ThemeData darkMode = ThemeData();
}
