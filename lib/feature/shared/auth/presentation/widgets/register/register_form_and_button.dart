import 'package:doctor_hunt/core/config/user_config.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterFormAndButton extends StatelessWidget {
  const RegisterFormAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          textInputType: TextInputType.name,
          hintText: context.t.auth.register.name,
        ),
        const SizedBox(height: 18),
        CustomTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: context.t.auth.register.email,
        ),
        const SizedBox(height: 18),
        CustomTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: context.t.auth.register.password,
          isPassword: true,
        ),
        const SizedBox(height: 32),
        CustomElevatedButton(
          text: context.t.auth.register.registerButton,
          onPressed: () {
            if (UserConfig.isAdmin) { // For attacking layers mm
              context.go(AdminHomeRoute().location);
            } else {
              context.go(PatientHomeRoute().location);
            }
          },
        ),
      ],
    );
  }
}
