import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/book_button.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/star_widget.dart';
import 'package:doctor_hunt/feature/Patient/fav/presentation/widgets/fav_button.dart';
import 'package:flutter/material.dart';

class DoctorDetailsCard extends StatelessWidget {
  const DoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 20),
        decoration: ShapeDecoration(
    color: AppColors.colorWhite,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    shadows: [
      BoxShadow(
        color: AppColors.colorShadowBlack8,
        blurRadius: 20,
        offset: Offset(0, 0),
        spreadRadius: 0,
      )
    ],
  ),
      child: Column(
        children: [
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  Assets.assetsImagesLive,
                  width: 92,
                  height: 92,
                  fit: BoxFit.cover,
                  ),
              ),
              const SizedBox(width: 20,),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Dr. Shruti Kedia",style: AppStyles.styleMedium18(),),
      const SizedBox(height: 4,),
        Text("Tooths Dentist",style: AppStyles.styleRegular14().copyWith(color: AppColors.colorGradientGreenEnd),),
        const SizedBox(height: 4),
        Row(
          
          children: [
             Row(
                  children: List.generate(
                    5,
                    (index) => StarWidget(filled: index < 4),
                  ),
                ),
            const SizedBox(width: 30,),
               Text("50.00 EGP",style: AppStyles.styleRegular14().copyWith(color: AppColors.colorGradientGreenEnd))


        ],)
   

    ],
  ),
  const Spacer(),
  Align(
    alignment: Alignment.topRight,
    child: const FavButton()),


            ],
          ),
          const SizedBox(height: 17,),
          Center(child: const BookButton())

        ],
      ),
    );
  }
}