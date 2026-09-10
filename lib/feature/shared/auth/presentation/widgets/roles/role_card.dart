import 'package:doctor_hunt/feature/shared/auth/data/models/rule_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/theme/app_colors.dart';

class RoleCard extends StatelessWidget {
  const RoleCard({
    super.key,
    required this.ruleContent,
    required this.isSelected,
  });
  final RuleModel ruleContent;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: isSelected ? AppColors.colorLightGreen : AppColors.colorWhite,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: isSelected
                ? AppColors.colorDarkGreen
                : AppColors.colorOffWhite,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.colorShadowBlack2,
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            ruleContent.imagePath,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.colorDarkGreen : AppColors.colorSlateGray,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ruleContent.title),
                const SizedBox(height: 4),
                Text(ruleContent.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
