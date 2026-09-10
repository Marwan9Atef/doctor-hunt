import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/extensions/context_util.dart';
import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key,required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -40,
          left: -40,
          child: Image.asset(Assets.assetsImagesOnboardingLeftBack),
        ),
        SafeArea(
          minimum: EdgeInsets.only(left: 20, right: 20, top: 80),
          child: Image.asset(
           imagePath,
            fit: BoxFit.cover,
            width: context.screenWidth,
          ),
        ),
      ],
    );
  }
}
