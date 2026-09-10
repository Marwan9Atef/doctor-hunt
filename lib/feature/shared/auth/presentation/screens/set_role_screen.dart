import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/widgets/roles/role_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SetRoleScreen extends StatelessWidget {
  const SetRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SvgPicture.asset(
              Assets.assetsImagesLogo,
              width: 70,
              height: 70,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(height: 11),
            Text("Doctor Hunt", style: AppStyles.styleBold25()),
            const SizedBox(height: 16),
            Text("Choose your role", style: AppStyles.styleRegular28()),
            const SizedBox(height: 8),
            Text(
              "The selected role determines the experience and available features",
              style: AppStyles.styleRegular14(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            const RoleCards(),
            const SizedBox(height: 32),
            CustomElevatedButton(
              text: "Continue",
              onPressed: () {
                context.push(LoginRoute().location);
              },
            ),
          ],
        ),
      ),
    );
  }
}
