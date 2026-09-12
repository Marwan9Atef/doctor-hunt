// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_center.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $onboardingRoute,
  $setRuleRoute,
  $loginRoute,
  $registerRoute,
  $doctorDetailsRoute,
  $appointmentRoute,
  $layoutShellRoute,
  $adminLayoutShellRoute,
];

RouteBase get $onboardingRoute => GoRouteData.$route(
  path: '/',
  name: 'onboarding',
  hasOverriddenOnExit: false,
  factory: $OnboardingRoute._fromState,
);

mixin $OnboardingRoute on GoRouteData {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $setRuleRoute => GoRouteData.$route(
  path: '/set-rule',
  name: 'set-rule',
  hasOverriddenOnExit: false,
  factory: $SetRuleRoute._fromState,
);

mixin $SetRuleRoute on GoRouteData {
  static SetRuleRoute _fromState(GoRouterState state) => const SetRuleRoute();

  @override
  String get location => GoRouteData.$location('/set-rule');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',
  name: 'login',
  hasOverriddenOnExit: false,
  factory: $LoginRoute._fromState,
);

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  @override
  String get location => GoRouteData.$location('/login');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
  path: '/register',
  name: 'register',
  hasOverriddenOnExit: false,
  factory: $RegisterRoute._fromState,
);

mixin $RegisterRoute on GoRouteData {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  @override
  String get location => GoRouteData.$location('/register');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $doctorDetailsRoute => GoRouteData.$route(
  path: '/doctor-details',
  name: 'doctor-details',
  hasOverriddenOnExit: false,
  factory: $DoctorDetailsRoute._fromState,
);

mixin $DoctorDetailsRoute on GoRouteData {
  static DoctorDetailsRoute _fromState(GoRouterState state) =>
      const DoctorDetailsRoute();

  @override
  String get location => GoRouteData.$location('/doctor-details');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appointmentRoute => GoRouteData.$route(
  path: '/appointment',
  name: 'appointment',
  hasOverriddenOnExit: false,
  factory: $AppointmentRoute._fromState,
);

mixin $AppointmentRoute on GoRouteData {
  static AppointmentRoute _fromState(GoRouterState state) =>
      const AppointmentRoute();

  @override
  String get location => GoRouteData.$location('/appointment');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $layoutShellRoute => ShellRouteData.$route(
  factory: $LayoutShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/home',
      name: 'patientHome',
      hasOverriddenOnExit: false,
      factory: $PatientHomeRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/fav',
      name: 'fav',
      hasOverriddenOnExit: false,
      factory: $PatientFavRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/book',
      name: 'book',
      hasOverriddenOnExit: false,
      factory: $PatientBookRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/communicate',
      name: 'communicate',
      hasOverriddenOnExit: false,
      factory: $PatientCommunicateRoute._fromState,
    ),
  ],
);

extension $LayoutShellRouteExtension on LayoutShellRoute {
  static LayoutShellRoute _fromState(GoRouterState state) =>
      const LayoutShellRoute();
}

mixin $PatientHomeRoute on GoRouteData {
  static PatientHomeRoute _fromState(GoRouterState state) =>
      const PatientHomeRoute();

  @override
  String get location => GoRouteData.$location('/home');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PatientFavRoute on GoRouteData {
  static PatientFavRoute _fromState(GoRouterState state) =>
      const PatientFavRoute();

  @override
  String get location => GoRouteData.$location('/fav');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PatientBookRoute on GoRouteData {
  static PatientBookRoute _fromState(GoRouterState state) =>
      const PatientBookRoute();

  @override
  String get location => GoRouteData.$location('/book');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PatientCommunicateRoute on GoRouteData {
  static PatientCommunicateRoute _fromState(GoRouterState state) =>
      const PatientCommunicateRoute();

  @override
  String get location => GoRouteData.$location('/communicate');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $adminLayoutShellRoute => ShellRouteData.$route(
  factory: $AdminLayoutShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/adminHome',
      name: 'adminHome',
      hasOverriddenOnExit: false,
      factory: $AdminHomeRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/adminSetting',
      name: 'adminSetting',
      hasOverriddenOnExit: false,
      factory: $AdminSettingRoute._fromState,
    ),
  ],
);

extension $AdminLayoutShellRouteExtension on AdminLayoutShellRoute {
  static AdminLayoutShellRoute _fromState(GoRouterState state) =>
      const AdminLayoutShellRoute();
}

mixin $AdminHomeRoute on GoRouteData {
  static AdminHomeRoute _fromState(GoRouterState state) =>
      const AdminHomeRoute();

  @override
  String get location => GoRouteData.$location('/adminHome');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AdminSettingRoute on GoRouteData {
  static AdminSettingRoute _fromState(GoRouterState state) =>
      const AdminSettingRoute();

  @override
  String get location => GoRouteData.$location('/adminSetting');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
