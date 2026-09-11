import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/extensions/context_util.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Container(
          width: context.screenWidth*.5,
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 17),
        decoration: ShapeDecoration(
        color: AppColors.colorWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.colorEerieBlack.withValues(alpha: 0.06),
            blurRadius: 22,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.assetsImagesGoogle, width: 24, height: 24),
              const SizedBox(width: 12),
              Text(context.t.auth.login.google, style: AppStyles.styleRegular16()),
            ],
          ),
        ),
      ),
    );
  }
}