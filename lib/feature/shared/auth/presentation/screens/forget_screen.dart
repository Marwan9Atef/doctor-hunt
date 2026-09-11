import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 19),
      color: AppColors.colorWhite,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.t.auth.login.forgotPassword,style: AppStyles.styleMedium24(),),
              const SizedBox(height: 12,),
              Text(context.t.auth.forget.subtitle,style: AppStyles.styleRegular14(),),
              const SizedBox(height: 32,),
               CustomTextFormField(textInputType: TextInputType.emailAddress, hintText: context.t.auth.login.email),
                 const SizedBox(height: 32,),
                 CustomElevatedButton(text: context.t.auth.forget.send, onPressed: () {}),
              
            ],
          ),
        ),
      ),
    );
  }
}