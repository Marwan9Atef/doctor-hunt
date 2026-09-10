import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';


class AuthTextNav extends StatelessWidget {
  const AuthTextNav({
    super.key,
    required this.onTap,
    required this.prefText,
    required this.suffixText,
  });
  final VoidCallback onTap;
  final String prefText;
  final String suffixText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: prefText,
          style: AppStyles.styleRegular14().copyWith(color: AppColors.colorMalachiteGreen),
          children: [
            TextSpan(
              text: suffixText,
              style: AppStyles.styleRegular14().copyWith(
                color: AppColors.colorMalachiteGreen,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}