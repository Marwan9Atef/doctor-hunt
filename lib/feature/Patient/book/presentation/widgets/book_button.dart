import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 27,vertical: 10),
          width: 112,
        height: 45,
        decoration: ShapeDecoration(
      color: AppColors.colorGradientGreenStart,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Center(child: Text(context.t.book.bookButton,style: AppStyles.styleRegular12().copyWith(color: AppColors.colorWhite),)),
      ),
    );
  }
}