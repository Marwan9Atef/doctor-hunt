import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';

class NavItem {
  final String icon;
  final String label;
  final String route;

  const NavItem({required this.icon, required this.label, required this.route});

  static List<NavItem> get getAdminNavItems => [
    NavItem(
      icon: Assets.assetsImagesAdminHome,
      label: t.navigation.home,
      route: '/adminHome',
    ),
    NavItem(
      icon: Assets.assetsImagesAdminSetting,
      label: t.navigation.adminSetting,
      route: '/adminSetting',
    ),
  ];
  static List<NavItem> get getPatientNavItems => [
    NavItem(
      icon: Assets.assetsImagesHome,
      label: t.navigation.home,
      route: '/home',
    ),
    NavItem(
      icon: Assets.assetsImagesFav,
      label: t.navigation.favorites,
      route: '/fav',
    ),
    NavItem(
      icon: Assets.assetsImagesBook,
      label: t.navigation.bookings,
      route: '/book',
    ),
    NavItem(
      icon: Assets.assetsImagesMessage,
      label: t.navigation.communicate,
      route: '/communicate',
    ),
  ];
}
