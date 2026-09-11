import 'package:doctor_hunt/feature/shared/onboarding/data/models/onboarding_model.dart';
import 'package:doctor_hunt/feature/shared/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:doctor_hunt/feature/shared/onboarding/presentation/widgets/onboarding_image.dart';
import 'package:flutter/material.dart';

class OnboardingViewItem extends StatelessWidget {
  const OnboardingViewItem({
    super.key,
    required this.onboardingContent,
    required this.onNext,
    required this.onSkip,
    required this.isLastPage,
  });
  final OnboardingModel onboardingContent;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingImage(imagePath: onboardingContent.imagePath),
        const SizedBox(height: 50),
        OnboardingBody(
          onNext: onNext,
          onSkip: onSkip,
          description:onboardingContent.description,
          title: onboardingContent.title,
          isLastPage: isLastPage,
        ),
      ],
    );
  }
}
