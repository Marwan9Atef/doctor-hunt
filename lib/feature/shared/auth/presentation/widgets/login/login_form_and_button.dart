import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginFormAndButton extends StatelessWidget {
  const LoginFormAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: "Email",
        ),
        const SizedBox(height: 18),
        CustomTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: "Password",
          isPassword: true,
        ),
        const SizedBox(height: 32),
        CustomElevatedButton(
          text: "Login",
          onPressed: () {
            context.go(HomeRoute().location);
          },
        ),
        const SizedBox(height: 18),
        InkWell(
          child: Text(
            "Forgor password",
            style: AppStyles.styleRegular14().copyWith(
              color: AppColors.colorMalachiteGreen,
            ),
          ),
        ),
      ],
    );
  }
}
