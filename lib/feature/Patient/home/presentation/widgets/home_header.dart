import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
    gradient: LinearGradient(
      begin: Alignment(-0.00, 0.05),
      end: Alignment(0.93, 1.10),
      colors: [AppColors.colorGradientGreenStart, AppColors.colorGradientGreenEnd],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
  ),

      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi Marwan!",style: AppStyles.styleMedium18().copyWith(color: AppColors.colorWhite ,fontWeight: FontWeight.w300),),
                const SizedBox(height: 4),
                Text("Find Your Doctor",style: AppStyles.styleBold25().copyWith(color: AppColors.colorWhite),),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                Assets.assetsImagesProfile,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
