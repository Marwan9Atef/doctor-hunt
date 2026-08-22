import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/feature/layout/data/models/nav_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NavBarItem extends StatelessWidget {
  final NavItem item;
  final bool isActive;

  const NavBarItem({super.key, required this.item, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(item.route),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: isActive
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.colorMalachiteGreen,
                  )
                : null,
            child: SvgPicture.asset(
              item.icon,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                isActive ? AppColors.colorWhite : AppColors.colorSlateGray,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static bool isRouteActive(BuildContext context, String route) {
    final String location = GoRouterState.of(context).uri.toString();
    return location.startsWith(route);
  }
}
