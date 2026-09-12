import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/available_item_list.dart';
import 'package:flutter/material.dart';

class AvailableTimeSection extends StatelessWidget {
  const AvailableTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: ShapeDecoration(
    color: AppColors.colorWhite,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(45),
        topRight: Radius.circular(45),
      ),
    ),
    shadows: [
      BoxShadow(
        color: AppColors.colorShadowBlack6,
        blurRadius: 25,
        offset: Offset(0, 0),
        spreadRadius: 0,
      )
    ],
  ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t.book.availableTime,style: AppStyles.styleMedium16(),),
          const SizedBox(height: 17,),
          const AvailableItemList(
            timeSlots: [
             {
              "title":"10:00",
              "subtitle":"AM"
             },
               {
              "title":"10:00",
              "subtitle":"PM"
             },
               {
              "title":"9:00",
              "subtitle":"AM"
             },
      
      
            ],
          ),

          const SizedBox(height: 32,),
          Text(t.book.availableTime,style: AppStyles.styleMedium16(),),
          const SizedBox(height: 17,),
          const AvailableItemList(
            timeSlots: [
             {
              "title":"30",
              "subtitle":"Minit"
             },
              {
              "title":"30",
              "subtitle":"Minit"
             },
               {
              "title":"30",
              "subtitle":"Minit"
             },
           
      
      
            ],
          ),
            const SizedBox(height: 20,),
            CustomElevatedButton(text: "Confirm", onPressed: (){})
          
      
      
      
        ],
      ),
    );
  }
}