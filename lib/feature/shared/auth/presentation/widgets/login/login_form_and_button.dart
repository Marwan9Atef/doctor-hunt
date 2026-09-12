import 'package:doctor_hunt/core/config/user_config.dart';

import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/app_snack_bar.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/core/widgets/custom_text_form_field.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/login_cubit.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/states/login_state.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/screens/forget_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginFormAndButton extends StatelessWidget {
  const LoginFormAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          AppSnackBars.showSuccessSnackBar(
            context: context,
            message: t.auth.login.successMessage,
          );
          if (UserConfig.isAdmin) {
            context.go(AdminHomeRoute().location);
          } else {
            context.go(PatientHomeRoute().location);
          }
        } else if (state is LoginFailure) {
          AppSnackBars.showErrorSnackBar(
            context: context,
            message: state.message,
          );
        }
      },
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Column(
            children: [
              CustomTextFormField(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                hintText: context.t.auth.login.email,
              ),
              const SizedBox(height: 18),
              CustomTextFormField(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                hintText: context.t.auth.login.password,
                isPassword: true,
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(
                text: context.t.auth.login.loginButton,
                isLoading: state is LoginLoading,
                onPressed: () {
                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    context.read<LoginCubit>().signIn(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  }
                },
              ),
              const SizedBox(height: 18),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    constraints: BoxConstraints(minWidth: double.infinity),
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    builder: (context) => Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: ForgetScreen(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    context.t.auth.login.forgotPassword,
                    style: AppStyles.styleRegular14().copyWith(
                      color: AppColors.colorMalachiteGreen,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
