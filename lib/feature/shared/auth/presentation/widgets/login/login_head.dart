import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginHead extends StatelessWidget {
  const LoginHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesLogo,
          width: 70,
          height: 70,
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(height: 11),
        Text(context.t.auth.login.title, style: AppStyles.styleMedium28()),
        const SizedBox(height: 4),
        Text(
          context.t.auth.login.subtitle,
          style: AppStyles.styleRegular14(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
