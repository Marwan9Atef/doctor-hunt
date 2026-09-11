import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/feature/shared/layout/data/models/nav_model.dart';
import 'package:doctor_hunt/feature/shared/layout/presentation/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final Widget child;
  const LayoutScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: AppColors.colorShadowBlack8,
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                NavItem.getNavItems(context).length,
                (index) => NavBarItem(
                  item: NavItem.getNavItems(context)[index],
                  isActive: NavBarItem.isRouteActive(
                    context,
                    NavItem.getNavItems(context)[index].route,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
