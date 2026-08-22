import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterFormAndButton extends StatelessWidget {
  const RegisterFormAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          textInputType: TextInputType.name,
          hintText: "Name",
        ),
        const SizedBox(height: 18),
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
        CustomElevatedButton(text: "Register", onPressed: () {}),
      ],
    );
  }
}
