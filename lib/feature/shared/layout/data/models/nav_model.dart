import 'package:doctor_hunt/core/asset/app_assets.dart';

class NavItem {
  final String icon;
  final String label;
  final String route;

  const NavItem({required this.icon, required this.label, required this.route});
    static const List<NavItem> navItems = [
    NavItem(icon: Assets.assetsImagesHome, label: 'Home', route: '/home'),
    NavItem(icon: Assets.assetsImagesFav, label: 'Fav', route: '/fav'),
    NavItem(icon: Assets.assetsImagesBook, label: 'Book', route: '/book'),
    NavItem(
      icon: Assets.assetsImagesMessage,
      label: 'Communicate',
      route: '/communicate',
    ),
  ];
}