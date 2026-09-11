import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/fav/presentation/widgets/fav_button.dart';
import 'package:flutter/material.dart';


class FavCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String? imageUrl;

  const FavCard({
    super.key,
    required this.doctorName,
    required this.specialization,
    this.imageUrl,
  });

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: ShapeDecoration(
        color: AppColors.colorWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        shadows: [
          BoxShadow(
            color: AppColors.colorShadowBlack6,
            blurRadius: 20,
            offset: const Offset(0, -1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Align(
                alignment: Alignment.topRight,
            
            child:const FavButton()
          ),
           ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                     imageUrl ?? Assets.assetsImagesLive,
                    width: 84,
                    height: 84,
                    fit: BoxFit.cover,
                  )
                  ),
          Text(doctorName, style: AppStyles.styleMedium16()),
          const SizedBox(height: 4),
          Text(
            specialization,
            style: AppStyles.styleLight14().copyWith(color: AppColors.colorGradientGreenStart),
          ),
        ],
      ),
    );
  }
}
