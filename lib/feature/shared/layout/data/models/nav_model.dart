import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class NavItem {
  final String icon;
  final String label;
  final String route;

  const NavItem({required this.icon, required this.label, required this.route});

  static List<NavItem> getNavItems(BuildContext context) => [
    NavItem(
      icon: Assets.assetsImagesHome,
      label: context.t.navigation.home,
      route: '/home',
    ),
    NavItem(
      icon: Assets.assetsImagesFav,
      label: context.t.navigation.favorites,
      route: '/fav',
    ),
    NavItem(
      icon: Assets.assetsImagesBook,
      label: context.t.navigation.bookings,
      route: '/book',
    ),
    NavItem(
      icon: Assets.assetsImagesMessage,
      label: context.t.navigation.communicate,
      route: '/communicate',
    ),
  ];
}
