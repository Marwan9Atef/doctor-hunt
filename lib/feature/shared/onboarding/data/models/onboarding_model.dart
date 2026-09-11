import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String imagePath;
  const OnboardingModel({
    required this.description,
    required this.imagePath,
    required this.title,
  });

  static List<OnboardingModel> getOnboardingContent(BuildContext context) => [
    OnboardingModel(
      description: context.t.onboarding.screens.screen1.description,
      imagePath: Assets.assetsImagesOnboarding1,
      title: context.t.onboarding.screens.screen1.title,
    ),
    OnboardingModel(
      description: context.t.onboarding.screens.screen2.description,
      imagePath: Assets.assetsImagesOnboarding2,
      title: context.t.onboarding.screens.screen2.title,
    ),
    OnboardingModel(
      description: context.t.onboarding.screens.screen3.description,
      imagePath: Assets.assetsImagesOnboarding3,
      title: context.t.onboarding.screens.screen3.title,
    ),
  ];
}
