import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return    ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    Assets.assetsImagesProfile,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                );
  }
}