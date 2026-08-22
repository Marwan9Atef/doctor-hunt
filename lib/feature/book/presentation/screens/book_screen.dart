import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu_book, size: 80, color: AppColors.colorSlateGray),
            const SizedBox(height: 16),
            Text(
              'Book Screen',
              style: AppStyles.styleMedium24(color: AppColors.colorSlateGray),
            ),
          ],
        ),
      ),
    );
  }
}
