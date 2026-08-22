import 'package:doctor_hunt/core/asset/app_assets.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String imagePath;
  const OnboardingModel({
    required this.description,
    required this.imagePath,
    required this.title,
  });
  static final List<OnboardingModel> onboardingContent = [
    OnboardingModel(
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
      imagePath: Assets.assetsImagesOnboarding1,
      title: "Find Trusted Doctors",
    ),
    OnboardingModel(
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
      imagePath: Assets.assetsImagesOnboarding2,
      title: "Choose Best Doctors",
    ),
    OnboardingModel(
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
      imagePath: Assets.assetsImagesOnboarding3,
      title: "Easy Appointments",
    ),
  ];
}
