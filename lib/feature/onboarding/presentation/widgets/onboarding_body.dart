import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.description,
    required this.title,
      required this.onNext,
    required this.onSkip,
  });
  final String title;
  final String description;
    final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 43),
      child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: AppStyles.styleMedium28()),
          const SizedBox(height: 11),
          Text(description, style: AppStyles.styleRegular14(), textAlign: TextAlign.center),
          const SizedBox(height: 53),
          CustomElevatedButton(text: "Next", onPressed: onNext),
          const SizedBox(height: 14),
          InkWell(
            onTap: onSkip,
            child: Text("Skip", style: AppStyles.styleRegular14()),
          ),
        ],
      ),
    );
  }
}
