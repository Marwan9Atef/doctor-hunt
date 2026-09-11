import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.00, 0.05),
              end: Alignment(0.93, 1.10),
              colors: [
                AppColors.colorGradientGreenStart,
                AppColors.colorGradientGreenEnd,
              ],
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
                    Text(
                      context.t.home.greeting.replaceFirst('{name}', 'Marwan'),
                      style: AppStyles.styleMedium18().copyWith(
                        color: AppColors.colorWhite,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      context.t.home.title,
                      style: AppStyles.styleBold25().copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),
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
        ),
        Transform.translate(
          offset: Offset(0, -25),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: HomeSearchBar(),
          ),
        ),
      ],
    );
  }
}
