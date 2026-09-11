import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveCard extends StatelessWidget {
  const LiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImagesLive, fit: BoxFit.cover),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Center(child: SvgPicture.asset(Assets.assetsImagesVideo)),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(7),
            decoration: ShapeDecoration(
              color: AppColors.colorRed,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: AppColors.colorWhite,
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  context.t.home.live,
                  style: AppStyles.styleRegular12().copyWith(
                    color: AppColors.colorWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
