import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StarWidget extends StatelessWidget {
  final bool filled;

  const StarWidget({super.key, required this.filled});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.assetsImagesStar,
      width: 16,
      height: 16,
      colorFilter: ColorFilter.mode(
        filled ? const Color(0xFFFFC107) : AppColors.colorSlateGray,
        BlendMode.srcIn,
      ),
    );
  }
}