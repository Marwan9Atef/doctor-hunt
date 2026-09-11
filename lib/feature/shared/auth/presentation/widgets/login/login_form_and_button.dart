import 'package:doctor_hunt/core/i18n/strings.g.dart';
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
          hintText: context.t.auth.login.email,
        ),
        const SizedBox(height: 18),
        CustomTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: context.t.auth.login.password,
          isPassword: true,
        ),
        const SizedBox(height: 32),
        CustomElevatedButton(
          text: context.t.auth.login.loginButton,
          onPressed: () {
            context.go(PatientHomeRoute().location);
          },
        ),
        const SizedBox(height: 18),
        InkWell(
          child: Text(
            context.t.auth.login.forgotPassword,
            style: AppStyles.styleRegular14().copyWith(
              color: AppColors.colorMalachiteGreen,
            ),
          ),
        ),
      ],
    );
  }
}
