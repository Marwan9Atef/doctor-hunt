import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/auth_text_nav.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/login/login_form_and_button.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/login/login_head.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const LoginHead(),
                const SizedBox(height: 32),
                const LoginFormAndButton(),
                const SizedBox(height: 18),
                AuthTextNav(
                  onTap: () {
                    RegisterRoute().go(context);
                  },
                  prefText: 'Don’t have an account?',
                  suffixText: 'Join us',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
