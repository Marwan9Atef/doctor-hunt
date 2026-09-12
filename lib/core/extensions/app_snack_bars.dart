import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppSnackBars {
  static void showSuccessSnackBar({
    required BuildContext context,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: TextStyle(color: AppColors.colorWhite)),
        backgroundColor: AppColors.colorGradientGreenStart,
        showCloseIcon: true,
      ),
    );
  }

  static void showErrorSnackBar({
    required BuildContext context,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: TextStyle(color: AppColors.colorWhite)),
        backgroundColor: AppColors.colorRed,
        showCloseIcon: true,
      ),
    );
  }
}
