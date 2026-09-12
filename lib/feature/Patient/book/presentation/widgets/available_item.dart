import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AvailableItem extends StatelessWidget {
  const AvailableItem({
    super.key,
    required this.subTitle,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: isSelected
              ? AppColors.colorMalachiteGreen
              : const Color(0x140EBE7F),
          shape: const OvalBorder(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppStyles.styleRegular12().copyWith(
                color: isSelected
                    ? AppColors.colorWhite
                    : AppColors.colorGradientGreenEnd,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              subTitle,
              style: AppStyles.styleRegular12().copyWith(
                color: isSelected
                    ? AppColors.colorWhite
                    : AppColors.colorGradientGreenEnd,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
