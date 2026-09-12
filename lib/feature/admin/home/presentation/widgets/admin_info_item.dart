import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/admin/home/data/models/admin_info_model.dart';
import 'package:flutter/material.dart';

class AdminInfoItem extends StatelessWidget {
  const AdminInfoItem({super.key,required this.adminInfo});
  final AdminInfoModel adminInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
    color: AppColors.colorWhite,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 1,
        color: const Color(0xFFF1F5F9),
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    shadows: [
      BoxShadow(
        color: AppColors.colorShadowBlack6,
        blurRadius: 8,
        offset: Offset(0, 2),
        spreadRadius: 0,
      )
    ],
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(adminInfo.title,style: AppStyles.styleRegular12(),),
          const SizedBox(height: 10,),
          Text(adminInfo.info,style: AppStyles.styleBold18(),),



        ],
      ),
    );
  }
}