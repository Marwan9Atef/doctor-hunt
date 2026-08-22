import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/auth_text_nav.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/register/register_form_and_button.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/register/register_head.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          heightFactor: 1.4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const RegisterHead(),
                const SizedBox(height: 32),
                const RegisterFormAndButton(),
                const SizedBox(height: 18),
                AuthTextNav(
                  onTap: () {
                    LoginRoute().go(context);
                  },
                  prefText: 'Already have an account?',
                  suffixText: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
