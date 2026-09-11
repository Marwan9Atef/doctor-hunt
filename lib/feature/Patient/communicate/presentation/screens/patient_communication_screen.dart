import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class PatientCommunicationScreen extends StatelessWidget {
  const PatientCommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat_bubble, size: 80, color: AppColors.colorSlateGray),
            const SizedBox(height: 16),
            Text(
              'Communication Screen',
              style: AppStyles.styleMedium24(color: AppColors.colorSlateGray),
            ),
          ],
        ),
      ),
    );
  }
}
