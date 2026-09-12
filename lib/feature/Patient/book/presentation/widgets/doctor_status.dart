import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/feature/Patient/book/data/models/status_model.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/status_card.dart';
import 'package:flutter/material.dart';

class DoctorStatus extends StatelessWidget {
  const DoctorStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
       decoration: ShapeDecoration(
    color: AppColors.colorWhite,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    shadows: [
      BoxShadow(
        color: AppColors.colorShadowBlack6,
        blurRadius: 20,
        offset: Offset(0, 0),
        spreadRadius: 0,
      )
    ],
  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       children:  
      List.generate(StatusModel.status.length, (index) => StatusCard(status:StatusModel.status[index] ),)
      ),
    );
  }
}