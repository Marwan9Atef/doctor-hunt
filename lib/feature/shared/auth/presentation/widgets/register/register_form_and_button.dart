import 'package:doctor_hunt/core/config/user_config.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/widgets/app_snack_bar.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/core/widgets/custom_text_form_field.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/register_cubit.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/states/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterFormAndButton extends StatelessWidget {
  const RegisterFormAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          AppSnackBars.showSuccessSnackBar(
            context: context,
            message: context.t.auth.register.successMessage,
          );
          if (UserConfig.isAdmin) {
            context.go(AdminHomeRoute().location);
          } else {
            context.go(PatientHomeRoute().location);
          }
        } else if (state is RegisterFailure) {
          AppSnackBars.showErrorSnackBar(
            context: context,
            message: state.message,
          );
        }
      },
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return Column(
            children: [
              CustomTextFormField(
                textInputType: TextInputType.name,
                hintText: context.t.auth.register.name,
              ),
              const SizedBox(height: 18),
              CustomTextFormField(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                hintText: context.t.auth.register.email,
              ),
              const SizedBox(height: 18),
              CustomTextFormField(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                hintText: context.t.auth.register.password,
                isPassword: true,
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(
                text: context.t.auth.register.registerButton,
                isLoading: state is RegisterLoading,
                onPressed: () {
                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    context.read<RegisterCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
