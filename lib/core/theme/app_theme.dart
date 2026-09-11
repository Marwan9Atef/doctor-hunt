import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightMode = ThemeData(
scaffoldBackgroundColor: AppColors.colorWhite,
appBarTheme: AppBarTheme(
centerTitle: false,
titleTextStyle: AppStyles.styleMedium18(),
backgroundColor: AppColors.colorWhite
)
  );
    static final ThemeData darkMode = ThemeData();
}
